TaskManagement::App.controllers :users do
  
  # get :index, :map => '/foo/bar' do
  #   session[:foo] = 'bar'
  #   render 'index'
  # end

  # get :sample, :map => '/sample/url', :provides => [:any, :js] do
  #   case content_type
  #     when :js then ...
  #     else ...
  # end

  # get :foo, :with => :id do
  #   'Maps to url '/foo/#{params[:id]}''
  # end

  # get '/example' do
  #   'Hello world!'
  # end

  get :new, :map => '/register' do
    @user = User.new
    render 'users/new'
  end

  get :latest do
    @users = User.all
    render 'users/list'
  end  

  post :create do
      password_confirmation = params[:user][:password_confirmation]
      params[:user].reject!{|k,v| k == 'password_confirmation'}
      if (params[:user][:password] == password_confirmation)
        @user = User.new(params[:user])
        if @user.save
          flash[:success] = 'Alumno registrado'
          redirect '/'
        else
          flash.now[:error] = 'Todos los campos son obligatorios'
          render 'users/new'
        end
      else
        @user = User.new (params[:user])
        flash.now[:error] = 'Las contrasenas no coinciden'
        render 'users/new'          
      end
  end

   delete :destroy do
     @user = User.get(params[:user_id])
     if @user.destroy
       flash[:success] = 'Alumno eliminado'
     else
       flash.now[:error] = 'Error elliminando alumno'
     end
     redirect '/'
   end  

   delete :destroyAll do
     @users = User.all
     @users.each do |i|
        if not i.is_teacher
          i.destroy
        end
     end
     flash[:success] = 'Todos los alumnos fueron eliminados'
     redirect '/'
   end

  get :tasks do
    @user = User.get(params[:user_id])
    @tasks = Task.all
    render 'users/task_list'
  end  

end

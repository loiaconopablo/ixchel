TaskManagement::App.controllers :sessions do
  
  get :login, :map => '/login' do
    @user = User.new
    render 'sessions/new'
  end

  post :create do
    email = params[:user][:email]
    password = params[:user][:password]
    @user = User.authenticate(email, password)
    if (@user.nil?)
      @user = User.new
      flash.now[:error] = 'Usuario invalido'
      render 'sessions/new'
    else
      sign_in @user
      print @user.email
      print @user.name
      redirect '/'          
    end
  end

  get :destroy, :map => '/logout' do 
    sign_out
    redirect '/'          
  end

end

TaskManagement::App.controllers :tasks do
  
  get :new do
    @task = Task.new
    render 'tasks/new'
  end

  get :latest do
    @tasks = Task.all
    render 'tasks/list'
  end 

  get :global do
    @tasks = Task.all
    render 'tasks/global_state'
  end 

  post :create do
    @task = Task.new(params[:task])
    if @task.save
      flash[:success] = 'Tarea Creada Correctamente'
    else
      flash.now[:error] = 'Se produjo un error al crear la tarea'
    end  
    redirect '/'   
  end 

end

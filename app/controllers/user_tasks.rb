TaskManagement::App.controllers :user_tasks do
  
   get :new do
    @user_task = UserTask.new
    @user_task.task  = Task.get(params[:task_id])
    if not current_user.estimo? @user_task.task.id
      render 'user_tasks/new'
    else
      flash[:error] = 'Ya realizaste la estamacion de ' + @user_task.task.title
      redirect 'tasks/latest'
    end
  end
  
   post :create do
    @usertask = UserTask.new(params[:user_task])
    @usertask.user = current_user
    @usertask.task  = Task.get(params[:task_id])
    if @usertask.save
        flash[:success] = 'Estimacion realizada.'
        redirect '/user_tasks/latest'
    else
        flash.now[:error] = 'Campo llenado incorrectamente: debe contener numero positivo'
        @user_task = UserTask.new
        @user_task.task  = Task.get(params[:task_id])
        render 'user_tasks/new'
    end
  end

  get :latest do
    @user_tasks = UserTask.all(:user => current_user)
    render 'user_tasks/list'
  end 

  post :done do
    @user_tasks = UserTask.all
    @users_temp = todosLosAlumnos
    @users_accomplish = []
    @users_not_accomplish = []
    @user_tasks.each do |ut|
      if(ut.task_id.to_s() == (params[:task_id]))
        @users_temp.each do |us|
          if(ut.user_id == us.id)
            @users_accomplish.push(us)
          end
        end
      end
    end
    @users_not_accomplish = @users_temp - @users_accomplish
    render 'user_tasks/done_list'
  end   

  get :edit, :with =>:usertask_id  do
    @user_task = UserTask.get(params[:usertask_id])
    render 'user_tasks/edit'
  end

  post :update, :with => :user_task_id do
    @usertask = UserTask.get(params[:user_task_id])
    @usertask.update(params[:user_task])
    if @usertask.save
        flash[:success] = 'Tarea guardada correctamente'
        redirect '/user_tasks/latest'
    else
        flash[:error] = 'Campo llenado incorrectamente: debe contener numero positivo'
        redirect '/user_tasks/latest'
    end
  end

end

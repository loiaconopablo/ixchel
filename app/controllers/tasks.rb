TaskManagement::App.controllers :tasks do
  

  get :new do
    @task = Task.new
    render 'tasks/new'
  end

  post :create do
    @task = Task.new(params[:task])
    redirect '/' 
    # @users = User.all
    # @users.each do |i|
    #   i.task.add(@task)  
  end

end
#   get :my do
#     @tasks = Task.find_by_owner(current_user)
#     render 'tasks/my_tasks'
#   end    

#   get :index do
#     @tasks = Task.all
#     render 'tasks/search'
#   end  

#   get :new do
#     @task = Task.new
#     render 'tasks/new'
#   end

#   get :latest do
#     @tasks = Task.all
#     render 'tasks/list'
#   end

#   get :edit, :with =>:task_id  do
#     @task = Task.get(params[:task_id])
#     # ToDo: validate the current user is the owner of the task
#     render 'tasks/edit'
#   end

#   get :apply, :with =>:task_id  do
#     @task = Task.get(params[:task_id])
#     # ToDo: validate the current user is the owner of the task
#     render 'tasks/apply'
#   end

#   post :create do
#     @task = Task.new(params[:task])
#     @task.owner = current_user
#     if @task.save
#       flash[:success] = 'Task created'
#       redirect '/tasks/my'
#     else
#       flash.now[:error] = 'Title is mandatory'
#       render 'tasks/new'
#     end  
#   end

#   post :update, :with => :task_id do
#     @task = Task.get(params[:task_id])
#     @task.update(params[:task])
#     if @task.save
#       flash[:success] = 'Task updated'
#       redirect '/tasks/my'
#     else
#       flash.now[:error] = 'Title is mandatory'
#       render 'tasks/edit'
#     end  
#   end

#   delete :destroy do
#     @task = Task.get(params[:task_id])
#     if @task.destroy
#       flash[:success] = 'Task deleted'
#     else
#       flash.now[:error] = 'Title is mandatory'
#     end
#     redirect 'tasks/my'
#   end

# end

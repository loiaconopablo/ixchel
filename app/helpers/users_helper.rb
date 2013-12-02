# Helper methods defined here can be accessed in any controller or view in the application

TaskManagement::App.helpers do
  # def simple_helper_method
  #  ...
  # end
 
 def todosLosAlumnos
 	return User.find_all{|x| not x.is_teacher}
 end


end

# Helper methods defined here can be accessed in any controller or view in the application

TaskManagement::App.helpers do
  # def simple_helper_method
  #  ...
  # end
  class Array
    def contiene?(other)
      result = true
      other.each do |elem|
        if not self.include? elem
          result = false
          break
        end
      end
      return result
    end

    def conciden(other)
      result = []
      other.each do |elem|
        if self.include? elem
          result.push(elem)
        end
      end
      return result
    end

    def nuevaListaDetask
      result = []
      self.each do |elem|
        result.push(elem.task_id)
      end
      return result
    end

     def soloIdTask
      result = []
      self.each do |elem|
        result.push(elem.id)
      end
      return result
    end

  end

  def tareas_realizadas (user)
    return UserTask.all(:user => user)
  end
  
  def get_tareas_vencidas
    @allTask = Task.all
    @due_asks = []
    @allTask.each do |task|
      if(task.limit_date < Date.today)
      @due_asks.push(task)
      end
    end
    return @due_asks
  end

  def global
    @alumnos = todosLosAlumnos
    @tareasVencidas = get_tareas_vencidas
  end

  def usuarioCumplio(user)
    @alltaskby = UserTask.all(:user => user).nuevaListaDetask
    @tareasVencidas = get_tareas_vencidas.soloIdTask
    return @alltaskby.contiene? @tareasVencidas
  end

  def tareas_realizadasQueVencieron(user)
    @alltaskby = UserTask.all(:user => user)
    @tareasVencidas = get_tareas_vencidas
    return  @alltaskby.conciden @tareasVencidas
  end

end

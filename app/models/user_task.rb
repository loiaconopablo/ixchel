class User_Task
  include DataMapper::Resource

  property :id, Serial
  property :id_user, Integer
  property :id_task, Integer

end

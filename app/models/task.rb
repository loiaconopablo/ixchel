require 'date'
class Task
  include DataMapper::Resource

  property :id, Serial
  property :title, String
  property :limit_date, Date
  has n, :user_tasks


  def set_title(t)
    self.titulo = t
  end

  def set_limit_date(str)
    self.limit_date = Date.parse(str)
  end

  def process
    TaskManagement::App.deliver(:notification, :contact_info_email, self)
  end


end
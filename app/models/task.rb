require 'date'
class Task
  include DataMapper::Resource

  property :id, Serial
  property :title, String
  property :estimated_time, Integer
  property :real_time, Integer
  property :limit_time, Date

  def set_title(t)
    self.titulo = t
  end

  def set_estimated_time(t)
    self.estimated_time = t
  end

  def set_real_time(t)
    self.real_time = t
  end

  def set_limit_date(d)
    self.limit_date = d
  end

end
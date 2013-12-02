class UserTask
  include DataMapper::Resource

  property :id, Serial
  property :estimated_time, Integer
  property :real_time, Integer, :default  => 0
  belongs_to :user
  belongs_to :task

  validates_presence_of :estimated_time

  def set_estimated_time(t)
    self.estimated_time = t
  end

  def set_real_time(t)
    self.real_time = t
  end


end

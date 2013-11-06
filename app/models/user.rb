class User
  include DataMapper::Resource


  property :id, Serial
  property :name, String
  property :lastname, String
  property :crypted_password, String
  property :email, String
  property :is_teacher, Boolean

  validates_presence_of :name
  validates_presence_of :lastname
  validates_presence_of :crypted_password
  validates_presence_of :email
  validates_format_of   :email,    :with => :email_address

  def password= (password)
    self.crypted_password = ::BCrypt::Password.create(password) unless password.nil?	
  end

  def set_is_student()
    self.is_teacher = false
  end

  def self.authenticate(email, password)
    user = User.find_by_email(email)
    return nil if user.nil?
    user.has_password?(password)? user: nil
  end

  def has_password?(password)
    ::BCrypt::Password.new(crypted_password) == password
  end

end

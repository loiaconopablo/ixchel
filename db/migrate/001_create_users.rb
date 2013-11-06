migration 1, :create_users do

  up do
    create_table :users do
      column :id, Integer, :serial => true
      column :name, DataMapper::Property::String, :length => 255
      column :lastname, DataMapper::Property::String, :length => 255
      column :crypted_password, DataMapper::Property::String, :length => 255
      column :email, DataMapper::Property::String, :length => 255
      column :is_teacher, DataMapper::Property::Boolean
    end
  end
  
  down do
    drop_table :users
  end
end

migration 4, :create_students do

  up do
    create_table :students do
      column :id, Integer, :serial => true
      column :name, DataMapper::Property::String, :length => 255
      column :lastname, DataMapper::Property::String, :length => 255
      column :crypted_password, DataMapper::Property::String, :length => 255
      column :email, DataMapper::Property::String, :length => 255
    end
  end
  
  down do
    drop_table :students
  end
end

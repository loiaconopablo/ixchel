migration 4, :create_user_task do
  up do
    create_table :user_tasks do
      column :id, Integer, :serial => true
      column :id_user, DataMapper::Property::Integer
      column :id_task, DataMapper::Property::Integer
      column :title, DataMapper::Property::String, :length => 255
      column :estimated_time, DataMapper::Property::Integer
      column :real_time, DataMapper::Property::Integer
      column :limit_date, DataMapper::Property::Date
    end
  end

  down do
    drop_table :user_tasks
  end
end

migration 2, :create_tasks do
  up do
    create_table :tasks do
      column :id, Integer, :serial => true
      column :title, DataMapper::Property::String, :length => 255
      column :estimated_time, DataMapper::Property::Integer
      column :real_time, DataMapper::Property::Integer
      column :limit_date, DataMapper::Property::Date
    end
  end

  down do
    drop_table :tasks
  end
end

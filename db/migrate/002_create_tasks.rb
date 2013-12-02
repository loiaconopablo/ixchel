migration 2, :create_tasks do
  up do
    create_table :tasks do
      column :id, Integer, :serial => true
      column :title, DataMapper::Property::String, :length => 255
      column :limit_date, DataMapper::Property::Date
    end
  end

  down do
    drop_table :tasks
  end
end

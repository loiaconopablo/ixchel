migration 3, :create_user_task do
  up do
    create_table :user_tasks do
      column :id, Integer, :serial => true
      column :estimated_time, DataMapper::Property::Integer
      column :real_time, DataMapper::Property::Integer
      column :user_id, Integer
      column :task_id, Integer
    end
  end

  down do
    drop_table :user_tasks
  end
end

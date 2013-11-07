migration 3, :create_user_task do
  up do
    create_table :user_tasks do
      column :id, Integer, :serial => true
      column :id_user, DataMapper::Property::Integer
      column :id_task, DataMapper::Property::Integer
    end
  end

  down do
    drop_table :user_tasks
  end
end

migration 3, :add_user_id_to_tasks do
  up do
    modify_table :tasks do
      add_column :user_id, Integer
    end
  end

  down do
    modify_table :tasks do
      drop_column :user_id
    end
  end
end

class RemoveIdAndDeletedFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :event_id, :integer
    remove_column :users, :admin_id, :integer
  end
end

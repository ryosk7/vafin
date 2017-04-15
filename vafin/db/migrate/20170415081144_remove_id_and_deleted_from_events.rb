class RemoveIdAndDeletedFromEvents < ActiveRecord::Migration[5.0]
  def change
    remove_column :events, :user_id, :integer
    remove_column :events, :admin_id, :integer
  end
end

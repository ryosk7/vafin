class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.integer :user_id
      t.string :title
      t.string :address
      t.integer :date
      t.integer :start_time
      t.integer :end_time
      t.integer :admin_id
      t.string :detail

      t.timestamps
    end
  end
end

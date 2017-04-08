class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title
      t.string :address
      t.string :detail
      t.integer :date

      t.timestamps
    end
  end
end

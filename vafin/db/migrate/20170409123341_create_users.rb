class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.references :event, foreign_key: true
      t.references :admin, foreign_key: true

      t.timestamps
    end
  end
end

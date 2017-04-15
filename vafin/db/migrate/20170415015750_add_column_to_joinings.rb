class AddColumnToJoinings < ActiveRecord::Migration[5.0]
  def change
    add_column :joinings, :event_date, :date
    add_column :joinings, :member, :integer
    add_column :joinings, :status, :string
  end
end

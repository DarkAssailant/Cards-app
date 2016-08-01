class CreateMrvesHours < ActiveRecord::Migration
  def up
    create_table :mrves_hours do |t|
      t.integer :hours
      t.date :day
      t.string :developer_id
      t.integer :mrf_id
    end
    add_foreign_key :mrves_hours, :developers, column: :developer_id, primary_key: "soid"
  end
  def down
    drop_table :mrves_hours
    remove_foreign_key :mrves_hours, :developers, column: :developer_id, primary_key: "soid"
  end
end

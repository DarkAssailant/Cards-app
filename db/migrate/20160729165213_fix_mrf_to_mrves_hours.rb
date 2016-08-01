class FixMrfToMrvesHours < ActiveRecord::Migration
  def up
    remove_column :mrves_hours, :developer_id
    add_column :mrves_hours, :developer_id, :string
    add_foreign_key :mrves_hours, :developers, column: :developer_id, primary_key: "soid"
  end
  def down
    add_column :mrves_hours, :developer_id
    remove_column :mrves_hours, :developer_id, :string
    remove_foreign_key :mrves_hours, :developers, column: :developer_id, primary_key: "soid"
  end
end

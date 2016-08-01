class AddMrfToMrvesHours < ActiveRecord::Migration
  def change
    remove_column :mrves_hours, :developer_id
    add_reference :mrves_hours, :developer, index: true, foreign_key: true
    add_foreign_key :mrves_hours, :developers, column: :developer_id, primary_key: "soid"
  end
end

class AddDeveloperToMrvesHours < ActiveRecord::Migration
  def change
    remove_column :mrves_hours, :mrf_id
    add_reference :mrves_hours, :mrf, index: true, foreign_key: true
    add_foreign_key :mrves_hours, :mrves, column: :mrf_id, primary_key: "mrf_number"
  end
end

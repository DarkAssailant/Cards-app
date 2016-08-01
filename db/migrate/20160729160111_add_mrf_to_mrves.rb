class AddMrfToMrves < ActiveRecord::Migration
  def up
    add_foreign_key :mrves_hours, :mrves, column: :mrf_id, primary_key: "mrf_number"
  end
  def down
    remove_foreign_key :mrves_hours, :mrves, column: :mrf_id, primary_key: "mrf_number"
  end
end

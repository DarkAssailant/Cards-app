class NotNullMrves < ActiveRecord::Migration
  def change
    change_column :mrves, :defect_counter, :integer, null: false, default: 0
    change_column :mrves, :asset_updates, :integer, null: false, default: 0
    change_column :mrves, :moved, :boolean, null: false,  default: false
    change_column :mrves_hours, :hours, :integer, null: false, default: 0
  end
end

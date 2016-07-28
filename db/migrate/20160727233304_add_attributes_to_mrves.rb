class AddAttributesToMrves < ActiveRecord::Migration
    def up
      add_column :mrves, :defect_counter, :integer
      add_column :mrves, :asset_updates, :integer
      add_column :mrves, :moved, :boolean
      remove_column :mrves, :hours, :integer
    end

    def down
      remove_column :mrves, :defect_counter, :integer
      remove_column :mrves, :asset_updates, :integer
      remove_column :mrves, :moved, :boolean
      add_column :mrves, :hours, :integer
    end
end

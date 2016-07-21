class AddPkMrf < ActiveRecord::Migration
    def up
      add_column :mrves, :mrf_number, :primary_key
    end

    def down
      remove_column :mrves, :mrf_number
    end
end

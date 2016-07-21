class ChangeIdMrf < ActiveRecord::Migration
  def up
    remove_column :mrves, :id
  end

  def down
    add_column :mrves, :id, :id
  end
end

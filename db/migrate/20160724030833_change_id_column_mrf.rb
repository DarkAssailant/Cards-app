class ChangeIdColumnMrf < ActiveRecord::Migration
  def up
    rename_column :mrves, :developer_soid, :developer_id
  end

  def down
    rename_column :mrves, :developer_id, :developer_soid
  end

end

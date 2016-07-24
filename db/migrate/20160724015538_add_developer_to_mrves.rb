class AddDeveloperToMrves < ActiveRecord::Migration

  def up
    remove_column :mrves, :developer_id, :int
    add_column :mrves, :developer_soid, :string
    add_foreign_key :mrves, :developers, column: :developer_soid, primary_key: "soid"
  end

  def down
    add_column :mrves, :developer_id, :int
    remove_column :mrves, :developer_soid, :string
    remove_foreign_key :mrves, :developers, column: :developer_soid, primary_key: "soid"
  end

end

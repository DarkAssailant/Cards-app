class AddSoidDeveloper < ActiveRecord::Migration
  def up
    add_column :developers, :soid, :string
  end

  def down
    remove_column :developers, :soid, :string
  end
end

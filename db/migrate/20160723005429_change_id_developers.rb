class ChangeIdDevelopers < ActiveRecord::Migration
  def up
    remove_column :developers, :id
  end

  def down
    add_column :developers, :id, :id
  end
end

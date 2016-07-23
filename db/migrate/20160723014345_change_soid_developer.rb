class ChangeSoidDeveloper < ActiveRecord::Migration
  def up
    remove_column :developers, :soid
  end

  def down
    add_column :developers, :soid, :primary_key
  end
end

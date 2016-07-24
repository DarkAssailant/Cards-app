class ChangeDeveloperSoid < ActiveRecord::Migration
  def change
    change_column :developers, :soid, :id
  end
end

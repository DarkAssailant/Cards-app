class CreatePsses < ActiveRecord::Migration
  def change
    create_table :psses do |t|
      t.string :name
      t.timestamps null: false
    end
  end
end

class CreateMrves < ActiveRecord::Migration
  def change
    create_table :mrves do |t|
      t.string :description
      t.integer :developer_id
      t.integer :pss_id
      t.integer :hours
      t.timestamps null: false
    end
  end
end

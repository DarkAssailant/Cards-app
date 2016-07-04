class CreateDevelopers < ActiveRecord::Migration
  def change
    create_table :developers do |t|
      t.string :soid
      t.string :name
      #t.timestamps pra agregar el created at and updated at
    end
  end
end

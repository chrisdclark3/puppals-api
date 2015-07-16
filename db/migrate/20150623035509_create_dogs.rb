class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :name
      t.integer :age
      t.string :size
      t.string :breed
      t.string :gender
      t.text :description

      t.timestamps null: false
    end
  end
end

class CreateCats < ActiveRecord::Migration[6.1]
  def change
    create_table :cats do |t|
      t.string :name
      t.integer :sex
      t.string :colour
      t.date :dob
      t.string :favourite_food

      t.timestamps
    end
  end
end

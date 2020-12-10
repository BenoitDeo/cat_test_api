class CreateCats < ActiveRecord::Migration[6.1]
  def change
    create_table :cats do |t|
      t.string :name
      t.string :sex
      t.string :colour
      t.string :dob
      t.string :favourite_food

      t.timestamps
    end
  end
end

class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.integer :shelter_id
      t.string :name
      t.string :breed
      t.string :gender
      t.string :size
      t.string :age
      t.boolean :vaccinated
      t.boolean :house_trained
      t.boolean :good_with_dogs
      t.boolean :good_with_cats
      t.boolean :good_with_kids

      t.timestamps
    end
  end
end

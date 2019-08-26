class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.integer :shelter_id
      t.string :name
      t.string :breed
      t.string :gender
      t.string :size
      t.string :age
      t.boolean :vaccinated, default: true
      t.boolean :house_trained, default: true
      t.boolean :good_with_dogs, default: true
      t.boolean :good_with_cats, default: true
      t.boolean :good_with_kids, default: true

      t.timestamps
    end
  end
end

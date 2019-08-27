class PetSerializer < ActiveModel::Serializer
  attributes :id, :shelter_id, :name, :breed, :gender, :size, :age, :kind, :vaccinated, :house_trained, :good_with_cats, :good_with_dogs, :good_with_kids
end

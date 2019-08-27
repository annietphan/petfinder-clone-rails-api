class ShelterSerializer < ActiveModel::Serializer
  attributes :id, :name, :street_address, :city, :state, :zipcode, :email, :number
  has_many :pets
end

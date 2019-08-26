class Shelter < ApplicationRecord
  has_many :pets
  validates :name, :street_address, :city, :state, :zipcode, :email, :number, presence: true
end

class Pet < ApplicationRecord
  belongs_to :shelter
  validates :name, :breed, :size, :age, presence: true
  validates_inclusion_of :gender, :in => ['female', 'male']
end

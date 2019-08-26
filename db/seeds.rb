3.times do
  Shelter.create(
    name: Faker::Company.name,
    street_address: Faker::Address.street_address,
    city: Faker::Address.city,
    state: Faker::Address.state,
    zipcode: Faker::Address.zip_code,
    email: Faker::Internet.email,
    number: Faker::PhoneNumber.phone_number
  )
end

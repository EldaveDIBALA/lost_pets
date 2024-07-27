require 'faker'

Pet.destroy_all

30.times do
  pet = Pet.new(
    name: Faker::Creature::Dog.name,
    address: Faker::Address.full_address,
    species: %w[dog cat turtle dragon snake rabbit].sample,
    found_on: Faker::Date.between(from: 10.days.ago, to: Date.today)
  )
  pet.save!
end

puts '30 animals were created !'

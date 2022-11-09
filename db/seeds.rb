require 'faker'

puts "Cleaning the DB..."
Restaurant.destroy_all
puts "DB is clean!"

puts "Making 10 restaurants..."

10.times do |resto|
  Restaurant.create!(
    name: Faker::Mountain.name,
    address: Faker::Address.street_address,
    category: %w[chinese italian japanese french belgian].sample,
    phone_number: Faker::PhoneNumber.cell_phone
  )
end

puts "10 restaurants created."

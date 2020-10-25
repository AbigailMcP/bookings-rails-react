# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

print 'Creating some spaces and bookings... '

# Create some spaces - these are the locations where bookings can be made.
# names = %w[London Oxford Edinborough]
# names.each { |name| Space.create(name: name) }

# Create some bookings in those spaces as test data.
Space.all.each do |space|
  space.bookings.create(
    start_date: Date.today,
    end_date: Date.today + 1,
    description: "I'm a booking for #{space.name}"
  )
end

puts 'Done!'

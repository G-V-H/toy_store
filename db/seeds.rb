# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times {
    User.create(
        email: Faker::Internet.email,
        password: Faker::Alphanumeric.alphanumeric(number: 10)
    )
}

10.times {
    Manufacturer.create(
        name: Faker::Game.platform,
        location: Faker::Address.city
    )
}

50.times {
    Toy.create(
        name: Faker::Game.title,
        description: Faker::Quote.yoda,
        date_posted: Time.now,
        user_id: Faker::Number.between(from: 1, to: Toy.count),
        manufacturer_id: Faker::Number.between(from: 1, to: Manufacturer.count)
    )
}


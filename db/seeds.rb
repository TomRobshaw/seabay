# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Listing.create!(
  title: 'Luxury Villa',
  description: 'A stunning home overlooking Queenscliff',
  price: 1_400_000
)

Listing.create!(
  title: 'Farm of George',
  description: 'An amazing farm homestead owned by the Tailwind CEO',
  price: 4_000_000
)

Listing.create!(
  title: 'Beach shack',
  description: 'Beach side living at an affordable price',
  price: 700_000
)

Listing.create!(
  title: 'Brighton Mansion',
  description: 'Previously owned by Karen of Brighton',
  price: 6_000_000
)

Listing.create!(
  title: 'Beachside cabin',
  description: 'Small cabin at the beachfront of Lang Lang foreshore',
  price: 180_000
)

User.create(
  email: "test@email.com",
  password: "secret",
  first_name: "steve",
  last_name: "house"
)

Bid.create(
  value: 200,
  listing_id: 1,
  user_id: 1
)

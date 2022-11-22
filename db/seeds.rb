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
  price: 1_400_000,
  image: "https://res.cloudinary.com/dapgryo75/image/upload/v1669097428/Luxury_villa_b8uvcr.jpg"
)

Listing.create!(
  title: 'Farm of George',
  description: 'An amazing farm homestead owned by the Tailwind CEO',
  price: 4_000_000,
  image: "https://res.cloudinary.com/dapgryo75/image/upload/v1669097513/oakleigh-farmstay_gmuwvj.jpg"
)

Listing.create!(
  title: 'Beach Box',
  description: 'Beach box on the Melbourne beachfront at Brighton',
  price: 700_000,
  image: "https://res.cloudinary.com/dapgryo75/image/upload/v1669098621/Beach_box_ag3i8g.jpg"
)

Listing.create!(
  title: 'Brighton Mansion',
  description: 'Previously owned by Karen of Brighton',
  price: 6_000_000,
  image: "https://res.cloudinary.com/dapgryo75/image/upload/v1669097428/Brighton_y8jgxd.jpg"
)

Listing.create!(
  title: 'Beachside cabin',
  description: 'Small cabin at the beachfront of Lang Lang foreshore',
  price: 180_000,
  image: "https://res.cloudinary.com/dapgryo75/image/upload/v1669098620/Lang_Lang_tncqs9.jpg"
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

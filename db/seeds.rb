require "open-uri"

Listing.destroy_all
Bid.destroy_all
User.destroy_all

puts "seeding..."

user = User.create(
  email: "test@email.com",
  password: "secret",
  first_name: "steve",
  last_name: "house"
)

listing = Listing.new(
  title: 'Luxury Villa',
  description: 'A stunning home overlooking Queenscliff, must see',
  price: 1_400_000,
  location: "4 St Andrews Street, Queenscliff, Vic, 3225",
  user: user,
)
file = URI.open("https://res.cloudinary.com/dapgryo75/image/upload/v1669097428/Luxury_villa_b8uvcr.jpg")
listing.image.attach(io: file, filename: "Farm_of_george", content_type: "image/jpg")
listing.save

listing = Listing.new(
  title: 'Farm of George',
  description: 'An amazing farm homestead owned by the Tailwind CEO',
  price: 4_000_000,
  location: "529 Cudgen Road, Cudgen, Nsw, 2487",
  user: user,
)
file = URI.open("https://res.cloudinary.com/dapgryo75/image/upload/v1669097513/oakleigh-farmstay_gmuwvj.jpg")
listing.image.attach(io: file, filename: "Farm_of_george", content_type: "image/jpg")
listing.save

listing = Listing.new(
  title: 'Beach Box',
  description: 'Beach box on the Melbourne beachfront at Brighton',
  price: 700_000,
  location: "40 Bathing Box, Brighton, Vic, 3186",
  user: user,
)
file = URI.open("https://res.cloudinary.com/dapgryo75/image/upload/v1669098621/Beach_box_ag3i8g.jpg")
listing.image.attach(io: file, filename: "Beach_box", content_type: "image/jpg")
listing.save

listing = Listing.new(
  title: 'Brighton Mansion',
  description: 'Previously owned by Karen of Brighton',
  price: 6_000_000,
  location: "39 Seacombe Grove, Brighton, Vic, 3186",
  user: user,
)
file = URI.open("https://res.cloudinary.com/dapgryo75/image/upload/v1669097428/Brighton_y8jgxd.jpg")
listing.image.attach(io: file, filename: "Brighton_mansion", content_type: "image/jpg")
listing.save


listing = Listing.new(
  title: 'Beachside cabin',
  description: 'Small cabin at the beachfront of Lang Lang foreshore',
  price: 180_000,
  location: "174 Jetty Road, Jam Jerrup, Vic, 3984"
)

file = URI.open("https://res.cloudinary.com/dapgryo75/image/upload/v1669098620/Lang_Lang_tncqs9.jpg")
listing.image.attach(io: file, filename: "Beachside_cabin", content_type: "image/jpg")
listing.save

puts "seeding completed"

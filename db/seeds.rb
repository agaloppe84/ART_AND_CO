User.destroy_all
Reservation.destroy_all

Artwork.destroy_all

puts "Seed started"

# -------------------------------- Users --------------------------------- #
puts "Seeding Users"

michel   = User.create(first_name: "michel", last_name: "patoudatchi", email: "michel@gmail.com",  password: "1234soleil")
david    = User.create(first_name: "david", last_name: "rodriguez", email: "david@gmail.com",   password: "1234lune")
robert   = User.create(first_name: "robert", last_name: "cousin", email: "robert@gmail.com",  password: "1234venus")
martin   = User.create(first_name: "martin", last_name: "malinvaud", email: "martin@gmail.com",  password: "1234saturn")
benoit   = User.create(first_name: "benoit", last_name: "weedow", email: "benoit@gmail.com",  password: "1234jupiter")
nicolas  = User.create(first_name: "nicolas", last_name: "lamarche", email: "nicolas@gmail.com", password: "1234pluton")
julie    = User.create(first_name: "julie", last_name: "bouillet", email: "julie@gmail.com",   password: "1234charon")
marie    = User.create(first_name: "marie", last_name: "lafont", email: "marie@gmail.com",   password: "1234mercure")
sabrina  = User.create(first_name: "sabrina", last_name: "peperoni", email: "sabrina@gmail.com", password: "1234apollo")
laura    = User.create(first_name: "laura", last_name: "chadezbec", email: "laura@gmail.com",   password: "1234gemini")

# ------------------------------------------------------------------------ #

puts "Seeding Artworks"

# ------------------------- Artworks - paintings ------------------------- #
puts "   -- Seeding Paintings"

la_joconde = Artwork.create!(name: "la joconde",
  description: "La Joconde est un tableau de l'artiste italien Léonard de Vinci",
  price: 30_000, genre: "painting", user: michel,
   address: "1000 5th Ave, New York, NY 10028, États-Unis")

turquoise_marilyn = Artwork.create!(name: "Turquoise Marilyn",
  description: "Turquoise Marilyn par Andy Warhol",
  price: 3_000_000, genre: "painting", user: nicolas, address: "82 Rue Brûle Maison,
   59000 Lille")

triptyque = Artwork.create!(name: "Triptyque",
  description: "Triptyque par Francis Bacon",
  price: 58_000_000, genre: "painting", user: robert, address: "5 Taylor St, San Francisco,
   CA 94102, États-Unis" )

dora_maar_au_chat = Artwork.create!(name: "Dora Maar au Chat",
  description: "Dora Maar au Chat par Pablo Picasso",
  price: 65_000_000, genre: "painting", user: martin, address: "3 Chome-1-1 Kudankita, Chiyoda,
   Tokyo 102-8246, Japon" )

# ------------------------------------------------------------------------ #




# ------------------------ Artworks - sculptures ------------------------- #
puts "Seeding Sculptures"

venus_de_milo = Artwork.create!(name: "Venus de Milo",
  description: "Sculptor: Alezandros of Antioch",
  price: 47_000_000, genre: "sculpture", user: benoit, address: "56 Hope Road Kingston 6 Hope Rd,
   Kingston, Jamaïque" )

the_thinker = Artwork.create!(name: "The Thinker",
  description: "Sculptor: Auguste Rodin",
  price: 67_000_000, genre: "sculpture", user: david, address: "Fintry,
   Glasgow, Lanarkshire G63 0LW, Royaume-Uni")

pieta = Artwork.create!(name: "Pieta",
  description: "Pieta is a marble structure shaped up by Michelangelo Buonarroti ",
  price: 36_000_000, genre: "sculpture", user: julie, address: "Broadway Blvd & Chicago Ave, Cape Town,
   7139, Afrique du Sud" )

manneken_pis = Artwork.create!(name: "Manneken Pis",
  description: "The Little man pee, commonly known as Manneken Pis",
  price: 67_000_000, genre: "sculpture", user: marie, address: "Albert Cuypstraat 25,
   1072 CK Amsterdam, Pays-Bas" )

# ------------------------------------------------------------------------ #



# ------------------------------ reservations ----------------------------- #
puts "Seeding Reservations"

resa1 = the_thinker.reservations.create!(start_date: Date.today - 4.days, end_date: Date.today + 4.days, user: david)
resa2 = venus_de_milo.reservations.create!(start_date: Date.today, end_date: Date.today + 4.days, user: david)
resa3 = dora_maar_au_chat.reservations.create!(start_date: Date.today + 2.days, end_date: Date.today + 10.days, user: robert)
resa4 = triptyque.reservations.create!(start_date: Date.today + 12.days, end_date: Date.today + 18.days, user: martin)
resa5 = turquoise_marilyn.reservations.create!(start_date: Date.today - 2.days, end_date: Date.today + 3.days, user: benoit)
resa6 = the_thinker.reservations.create!(start_date: Date.today - 4.days, end_date: Date.today + 2.days, user: nicolas)
resa7 = venus_de_milo.reservations.create!(start_date: Date.today, end_date: Date.today + 4.days, user: julie)
resa8 = dora_maar_au_chat.reservations.create!(start_date: Date.today + 2.days, end_date: Date.today + 9.days, user: marie)
resa9 = triptyque.reservations.create!(start_date: Date.today + 10.days, end_date: Date.today + 13.days, user: sabrina)
resa10 = turquoise_marilyn.reservations.create!(start_date: Date.today - 6.days, end_date: Date.today + 2.days, user: laura)

puts "Seeding done"
# ------------------------------------------------------------------------- #










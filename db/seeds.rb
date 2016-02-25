User.destroy_all
Reservation.destroy_all

Artwork.destroy_all

puts "Seed started"

# -------------------------------- Users --------------------------------- #
puts "Seeding Users"

michel   = User.create(email: "michel@gmail.com",  password: "1234soleil")
david    = User.create(email: "david@gmail.com",   password: "1234lune")
robert   = User.create(email: "robert@gmail.com",  password: "1234venus")
martin   = User.create(email: "martin@gmail.com",  password: "1234saturn")
benoit   = User.create(email: "benoit@gmail.com",  password: "1234jupiter")
nicolas  = User.create(email: "nicolas@gmail.com", password: "1234pluton")
julie    = User.create(email: "julie@gmail.com",   password: "1234charon")
marie    = User.create(email: "marie@gmail.com",   password: "1234mercure")
sabrina  = User.create(email: "sabrina@gmail.com", password: "1234apollo")
laura    = User.create(email: "laura@gmail.com",   password: "1234gemini")

# ------------------------------------------------------------------------ #

puts "Seeding Artworks"

# ------------------------- Artworks - paintings ------------------------- #
puts "   -- Seeding Paintings"

la_joconde = Artwork.create!(name: "la joconde",
  description: "La Joconde est un tableau de l'artiste italien Léonard de Vinci",
  price: 30_000, genre: "painting", user: michel)

turquoise_marilyn = Artwork.create!(name: "Turquoise Marilyn",
  description: "Turquoise Marilyn par Andy Warhol",
  price: 3_000_000, genre: "painting", user: nicolas)

triptyque = Artwork.create!(name: "Triptyque",
  description: "Triptyque par Francis Bacon",
  price: 58_000_000, genre: "painting", user: robert )

dora_maar_au_chat = Artwork.create!(name: "Dora Maar au Chat",
  description: "Dora Maar au Chat par Pablo Picasso",
  price: 65_000_000, genre: "painting", user: martin )

# ------------------------------------------------------------------------ #




# ------------------------ Artworks - sculptures ------------------------- #
puts "Seeding Sculptures"

venus_de_milo = Artwork.create!(name: "Venus de Milo",
  description: "Sculptor: Alezandros of Antioch",
  price: 47_000_000, genre: "sculpture", user: benoit )

the_thinker = Artwork.create!(name: "The Thinker",
  description: "Sculptor: Auguste Rodin",
  price: 67_000_000, genre: "sculpture", user: david )

pieta = Artwork.create!(name: "Pieta",
  description: "Pieta is a marble structure shaped up by Michelangelo Buonarroti ",
  price: 36_000_000, genre: "sculpture", user: julie )

manneken_pis = Artwork.create!(name: "Manneken Pis",
  description: "The Little man pee, commonly known as Manneken Pis",
  price: 67_000_000, genre: "sculpture", user: marie )

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










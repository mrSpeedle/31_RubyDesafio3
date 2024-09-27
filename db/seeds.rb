# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

#Movie.create(name: 'Inception', synopsis: 'A thief who steals corporate secrets...', director: 'Christopher Nolan')
#Series.create(name: 'Breaking Bad', synopsis: 'A high school chemistry teacher turned...', director: 'Vince Gilligan')
#DocumentaryFilm.create(name: 'Planet Earth', synopsis: 'A documentary series exploring...', director: 'David Attenborough')



10.times do
  Movie.create(
    name: Faker::Movie.title,
    synopsis: Faker::Lorem.paragraph,
    director: Faker::Name.name
  )
end

10.times do
  Series.create(
    name: Faker::TvShows::BreakingBad.character,
    synopsis: Faker::Lorem.paragraph,
    director: Faker::Name.name
  )
end

10.times do
  DocumentaryFilm.create(
    name: Faker::Movie.title,
    synopsis: Faker::Lorem.paragraph,
    director: Faker::Name.name
  )
end
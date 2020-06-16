Album.destroy_all
User.destroy_all

50.times do |index|
  Album.create!(
    name: Faker::Music.album, 
    artist: Faker::Music::RockBand.name, 
    discog_id: Faker::Number.between(from: 1, to: 5),
    cover_image: Faker::Internet.url(host: 'discogs.com'),
    link: Faker::Internet.url(host: 'discogs.com'),
    genre: Faker::Music.genre
  )
end

10.times do |index|
  User.create!(
    email: Faker::Internet.email,
    password: 'password',
    username: Faker::Internet.username
  )
end

p "Created #{User.count} users and #{Album.count} albums"
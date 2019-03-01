# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Destroying all'
Game.destroy_all
Request.destroy_all
Team.destroy_all
User.destroy_all
League.destroy_all

bear_city_logo_url = "http://flattrackstats.com/sites/default/files/imagecache/profile/logos/BCRD-Bear\%20City%20Roller\%20Derby_0.png"
wallbreakers_logo_url = "http://flattrackstats.com/sites/default/files/imagecache/profile/logos/BCRD-zugeschnitten-transparent-Inglorious\%20Bombshells.png"
breaking_bears_logo_url = "http://flattrackstats.com/sites/default/files/imagecache/profile/logos/BCRD-zugeschnitten-transparent-Berlin\%20Bombshells\%20C-team.png"
lrg_logo_url = 'http://flattrackstats.com/sites/default/files/imagecache/profile/logos/46446955_1505484136222040_7836643361741078528_n.png'
prg_logo_url = 'http://flattrackstats.com/sites/default/files/imagecache/profile/logos/Paris%20Rollergirls.jpg'
montreuil_logo_url = 'http://flattrackstats.com/sites/default/files/imagecache/profile/logos/Montreuil%20logo.png'
beastie_logo_url = 'http://flattrackstats.com/sites/default/files/imagecache/profile/logos/reims.jpg'
cornwall_logo_url = 'http://flattrackstats.com/sites/default/files/imagecache/profile/logos/Cornwall%20logo.jpg'
cornwall_b_logo_url = 'http://flattrackstats.com/sites/default/files/imagecache/profile/logos/cornwallb.png'
stockholm_logo_url = 'http://flattrackstats.com/sites/default/files/imagecache/profile/logos/stockholm.png'
stockholm_b_logo_url = "http://flattrackstats.com/sites/default/files/imagecache/profile/logos/stockholm\%20bstrd.jpg"
liverpool_logo_url = 'http://flattrackstats.com/sites/default/files/imagecache/profile/logos/17359300_1346809895383605_4405284166842330556_o.jpg'
yellow_shovemarines_logo_url = 'http://flattrackstats.com/sites/default/files/imagecache/profile/logos/Liverpool-Roller-Birds-150_0.png'


puts 'Creating leagues'
league_1 = League.create!(name: 'Bear City Roller Derby', city: "Berlin", country: "Germany", logo: bear_city_logo_url, website: 'bearcityrollerderby.com/')
league_2 = League.create!(name: 'Lomme Roller Girls', city: "Lomme", country: "France", logo: lrg_logo_url, website: 'https://www.lommerollergirls.com/')
league_3 = League.create!(name: 'Paris Roller Girls', city: "Paris", country: "France", logo: prg_logo_url, website: 'www.parisrollergirls.com/')
league_4 = League.create!(name: 'Roller Skating Montreuil', city: "Montreuil", country: "France",logo: montreuil_logo_url, website: 'https://www.facebook.com/lesnastypecheresses/')
league_5 = League.create!(name: 'Beastie Derby Girls', city: "Reims", country: "France", logo: beastie_logo_url, website: 'https://www.facebook.com/BeastieDerbyGirls/')
league_6 = League.create!(name: 'Cornwall Roller Derby', city: "Newquay", country: "UK", logo: cornwall_logo_url, website: 'www.cornwallrollerderby.com/')
league_7 = League.create!(name: 'Stockholm Roller Derby', city: "Stockholm", country: "Sweden", logo: stockholm_logo_url, website: 'rollerderby.se/')
league_8 = League.create!(name: 'Liverpool Roller Birds', city: "Liverpool", country: "UK", logo: liverpool_logo_url, website: 'www.liverpoolrollerbirds.co.uk/')

puts 'Leagues created'

puts 'Creating users'

avatar_1 = "https://res.cloudinary.com/dq5pqhr4o/image/upload/v1551450831/Derby\%20Match/avatar2.jpg"
avatar_2 = "https://res.cloudinary.com/dq5pqhr4o/image/upload/v1551450831/Derby\%20Match/avatar1.jpg"

user_1 = User.create!(email: 'bomb@bear.com', password: 'azerty', derby_name: 'La terreur de Berlin Bombshells')
user_2 = User.create!(email: 'wallbreakers@bear.com', password: 'azerty', derby_name: 'La terreur de Wallbreakers')
user_3 = User.create!(email: 'breaking@bear.com', password: 'azerty', derby_name: 'La terreur de Breaking Bears')
user_4 = User.create!(email: 'bunnies@lrg.com', password: 'azerty', derby_name: 'La terreur des Bad Bunnies')
user_5 = User.create!(email: 'batardes@lrg.com', password: 'azerty', derby_name: 'La terreur des Glorious batardes')
user_6 = User.create!(email: 'tetons@lrg.com', password: 'azerty', derby_name: 'La terreur des Tétons Flingueurs')
user_7 = User.create!(email: 'all_stars@prg.com', password: 'azerty', derby_name: 'La terreur des All Stars de Paris')
user_8 = User.create!(email: 'quedalles@prg.com', password: 'azerty', derby_name: 'La terreur des Quedalles', remote_photo_url: avatar_1)
user_9 = User.create!(email: 'sans_culottes@prg.com', password: 'azerty', derby_name: 'La terreur de Sans culottes')
user_10 = User.create!(email: 'nasty@montreuil.com', password: 'azerty', derby_name: 'La terreur des Nasty pécheresses')
user_11 = User.create!(email: 'rsm_b@montreuil.com', password: 'azerty', derby_name: 'La terreur des RSM B')
user_12 = User.create!(email: 'beastie@beaste.com', password: 'azerty', derby_name: 'La terreur des Beasties')
user_13 = User.create!(email: 'atlantic_breakers_a@cornwall.com', password: 'azerty', derby_name: 'La terreur des Atlanti Breakers A')
user_14 = User.create!(email: 'atlantic_breakers_b@cornwall.com', password: 'azerty', derby_name: 'La terreur des Atlanti Breakers B')
user_15 = User.create!(email: 'all_stars@stockholm.com', password: 'azerty', derby_name: 'La terreur des All Stars de Stockholm')
user_16 = User.create!(email: 'bstrds@stockholm.com', password: 'azerty', derby_name: 'La terreur de la BSTRDs de Stockholm', remote_photo_url: avatar_2)
user_17 = User.create!(email: 'c_star@stockholm.com', password: 'azerty', derby_name: 'La terreur de la C Stars de Stockholm')
user_18 = User.create!(email: 'sisters@liverpool.com', password: 'azerty', derby_name: 'La terreur des Sisters of Mersey')
user_19 = User.create!(email: 'yellow_shovemarines@liverpool.com', password: 'azerty', derby_name: 'La terreur des Yellow Shovemarines')
user_20 = User.create!(email: 'c_team@liverpool.com', password: 'azerty', derby_name: 'La terreur de la C Team de Liverpool')

puts "#{User.count} users created"

puts 'Creating teams'

teams = Team.create!([
  { name: 'Berlin Bombshells', ranking: 9, league: league_1, user: user_1, photo: bear_city_logo_url },
  { name: 'Wallbreakers', ranking: 104, league: league_1, user: user_2, photo: wallbreakers_logo_url },
  { name: 'Breaking Bears', ranking: 296, league: league_1, user: user_3, photo: breaking_bears_logo_url },
  { name: 'Bad bunnies', ranking: 11, league: league_2, user: user_4, photo: lrg_logo_url },
  { name: 'Glorious batardes', ranking: 82, league: league_2, user: user_5, photo: lrg_logo_url },
  { name: 'Tétons Flingueurs', ranking: 323, league: league_2, user: user_6, photo: lrg_logo_url },
  { name: 'All stars', ranking: 7, league: league_3, user: user_7, photo: prg_logo_url },
  { name: 'Les quedalles', ranking: 83, league: league_3, user: user_8, photo: prg_logo_url },
  { name: 'Les sans culottes', ranking: 413, league: league_3, user: user_9, photo: prg_logo_url },
  { name: 'Les nasty pécheresses', ranking: 259, league: league_4, user: user_10, photo: montreuil_logo_url },

  { name: 'All stars', ranking: 171, league: league_5, user: user_12, photo: beastie_logo_url },
  { name: 'Atlantic Breakers A', ranking: 367, league: league_6, user: user_13, photo: cornwall_logo_url },
  { name: 'Atlantic Breakers B', ranking: 342, league: league_6, user: user_14, photo: cornwall_b_logo_url },
  { name: 'All Stars', ranking: 6, league: league_7, user: user_15, photo: stockholm_logo_url },
  { name: 'BSTRDs', ranking: 59, league: league_7, user: user_16, photo: stockholm_b_logo_url },
  { name: 'C-Stars', ranking: 249, league: league_7, user: user_17, photo: stockholm_logo_url },
  { name: 'Sisters of Mersey', ranking: 74, league: league_8, user: user_18, photo: liverpool_logo_url },
  { name: 'Yellow Shovemarines', ranking: 195, league: league_8, user: user_19, photo: yellow_shovemarines_logo_url },
  { name: 'C Team', ranking: 360, league: league_8, user: user_20, photo: liverpool_logo_url }
])

puts "#{Team.count} teams created"


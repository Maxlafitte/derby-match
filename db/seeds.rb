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
amsterdam_logo_url = 'http://flattrackstats.com/sites/default/files/imagecache/profile/logos/a%27dam_0.png'
brest_logo_url = 'http://flattrackstats.com/sites/default/files/imagecache/profile/logos/14705901_1465282670161678_7022213945138907968_n.jpg'
brussels_logo_url = 'http://flattrackstats.com/sites/default/files/imagecache/profile/logos/_LOGO_Pixies_2013.png'
brussels_b_logo_url = 'http://flattrackstats.com/sites/default/files/imagecache/profile/logos/Atomium%20Kittens.jpg'
turku_logo_url = 'http://flattrackstats.com/sites/default/files/imagecache/profile/logos/15895313_1186430301406834_1278590317176866953_n.jpg'
dublin_logo_url = 'http://flattrackstats.com/sites/default/files/imagecache/profile/logos/26804382_1719333051462362_6492099404738294748_n.jpg'

puts 'Creating leagues'
league_1 = League.create!(name: 'Bear City Roller Derby', city: "Berlin", country: "Germany", logo: bear_city_logo_url, latitude: 52.52437, longitude: 13.41053, website: 'bearcityrollerderby.com/')
league_2 = League.create!(name: 'Lomme Roller Girls', city: "Lomme", country: "France", logo: lrg_logo_url, latitude: 48.8648586, longitude: 2.3798648, website: 'https://www.lommerollergirls.com/')
league_3 = League.create!(name: 'Paris Roller Girls', city: "Paris", country: "France", logo: prg_logo_url, latitude: 48.8566101, longitude: 2.3514992, website: 'www.parisrollergirls.com/')
league_4 = League.create!(name: 'Roller Skating Montreuil', city: "Montreuil", country: "France",logo: montreuil_logo_url, latitude: 48.8603, longitude: 2.4429999999999836,website: 'https://www.facebook.com/lesnastypecheresses/')
league_5 = League.create!(name: 'Beastie Derby Girls', city: "Reims", country: "France", logo: beastie_logo_url, latitude: 49.2577886, longitude: 4.031926, website: 'https://www.facebook.com/BeastieDerbyGirls/')
league_6 = League.create!(name: 'Cornwall Roller Derby', city: "Newquay", country: "UK", logo: cornwall_logo_url, latitude: 50.4156, longitude: -5.073190000000068, website: 'www.cornwallrollerderby.com/')
league_7 = League.create!(name: 'Stockholm Roller Derby', city: "Stockholm", country: "Sweden", logo: stockholm_logo_url, latitude: 59.3251172, longitude: 18.0710935, website: 'rollerderby.se/')
league_8 = League.create!(name: 'Liverpool Roller Birds', city: "Liverpool", country: "UK", logo: liverpool_logo_url, latitude: 53.4106, longitude: 2.9779399999999896, website: 'www.liverpoolrollerbirds.co.uk/')

league_9 = League.create!(name: 'Amsterdam Roller Derby', city: "Amsterdam", country: "Netherlands", logo: amsterdam_logo_url, latitude: 48.8648405, longitude: 2.3798485, website: 'www.amsterdamrollerderby.nl')
league_10 = League.create!(name: 'B.M.O. Roller Derby Girls', city: "Brest", country: "France", logo: brest_logo_url, latitude: 48.3905283, longitude: -4.4860088, website: 'https://www.facebook.com/BMO.RDG/')
league_11 = League.create!(name: 'Brussels Derby Pixies', city: "Brussels", country: "Belgium", logo: brussels_logo_url, latitude: 50.8465573, longitude: 4.351697, website: 'www.facebook.com/BrusselsDerbyPixies')
league_12 = League.create!(name: 'Dirty River Roller Derby', city: "Turku", country: "Finland", logo: turku_logo_url, latitude: 60.4518, longitude: 22.267100000000028, website: 'turkurollerderby.com')
league_13 = League.create!(name: 'Dublin Roller Derby', city: "Dublin", country: "Ireland", logo: dublin_logo_url, latitude: 53.3498, longitude: -6.260269999999991, website: 'www.dublinrollerderby.com')


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

user_21 = User.create!(email: 'myrtle@amsterdam.com', password: 'azerty', derby_name: 'Amsterdam Infernal Myrtle ')
user_22 = User.create!(email: 'niagra@amsterdam.com', password: 'azerty', derby_name: 'Amsterdam Niagra Falls')
user_23 = User.create!(email: 'jam@brest.com', password: 'azerty', derby_name: 'Brest Strawberry Jam')
user_24 = User.create!(email: 'bambi@brest.com', password: 'azerty', derby_name: 'Brest Bambi Hunter')
user_25 = User.create!(email: 'max@brussels.com', password: 'azerty', derby_name: 'Brussels Max Penalty')
user_26 = User.create!(email: 'indominous@brussels.com', password: 'azerty', derby_name: 'Brussels Indominous')
user_27 = User.create!(email: 'mascara@turku.com', password: 'azerty', derby_name: 'Turku Bleeding Mascara')
user_28 = User.create!(email: 'devil@turku.com', password: 'azerty', derby_name: 'Turku Derby Devil')

user_29 = User.create!(email: 'nine@dublin.com', password: 'azerty', derby_name: 'Dublin Nine Inch Nails')
user_30 = User.create!(email: 'spandex@dublin.com', password: 'azerty', derby_name: 'Dublin Spandex')
user_31 = User.create!(email: 'big@dublin.com', password: 'azerty', derby_name: 'Dublin Big Rig')


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
  { name: 'C Team', ranking: 360, league: league_8, user: user_20, photo: liverpool_logo_url },
  { name: 'All Stars', ranking: 24, league: league_9, user: user_21, photo: amsterdam_logo_url },
  { name: 'Battle Stars', ranking: 338, league: league_9, user: user_22, photo: amsterdam_logo_url },
  { name: 'Toutes les Etoiles', ranking: 133, league: league_10, user: user_23, photo: brest_logo_url },
  { name: 'Les Sabordeuses', ranking: 210, league: league_10, user: user_24, photo: brest_logo_url},
  { name: 'All Stars', ranking: 40, league: league_11, user: user_25, photo: brussels_logo_url},
  { name: 'Atomium Kittens', ranking: 159, league: league_11, user: user_26, photo: brussels_b_logo_url},
  { name: 'Föri Fighters', ranking: 36, league: league_12, user: user_27, photo: turku_logo_url},
  { name: 'Åbo B-ajs', ranking: 278, league: league_12, user: user_28, photo: turku_logo_url},
  { name: 'Dublin Roller Derby A', ranking: 12, league: league_13, user: user_29, photo: dublin_logo_url},
  { name: 'Dublin Roller Derby B', ranking: 79, league: league_13, user: user_30, photo: dublin_logo_url},
  { name: 'Dublin Roller Derby C', ranking: 219, league: league_13, user: user_31, photo: dublin_logo_url},
])

puts "#{Team.count} teams created"


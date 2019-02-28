# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Destroying all'
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
stockholm_b_logo_url = 'http://flattrackstats.com/sites/default/files/imagecache/profile/logos/stockholm\%20bstrd.jpg'
liverpool_logo_url = 'http://flattrackstats.com/sites/default/files/imagecache/profile/logos/17359300_1346809895383605_4405284166842330556_o.jpg'
yellow_shovemarines_logo_url = 'http://flattrackstats.com/sites/default/files/imagecache/profile/logos/Liverpool-Roller-Birds-150_0.png'

puts 'Creating leagues'

leagues = League.create!([
  { name: 'Bear City Roller Derby', city: "Berlin", country: "Germany", logo: bear_city_logo_url, website: 'bearcityrollerderby.com/' },
  { name: 'Lomme Roller Girls', city: "Lomme", country: "France", logo: lrg_logo_url, website: 'https://www.lommerollergirls.com/' },
  { name: 'Paris Roller Girls', city: "Paris", country: "France", logo: prg_logo_url, website: 'www.parisrollergirls.com/' },
  { name: 'Roller Skating Montreuil', city: "Montreuil", country: "France",logo: montreuil_logo_url, website: 'https://www.facebook.com/lesnastypecheresses/' },
  { name: 'Beastie Derby Girls', city: "Reims", country: "France", logo: beastie_logo_url, website: 'https://www.facebook.com/BeastieDerbyGirls/' },
  { name: 'Cornwall Roller Derby', city: "Newquay", country: "UK", logo: cornwall_logo_url, website: 'www.cornwallrollerderby.com/' },
  { name: 'Stockholm Roller Derby', city: "Stockholm", country: "Sweden", logo: stockholm_logo_url, website: 'rollerderby.se/' },
  { name: 'Liverpool Roller Birds', city: "Liverpool", country: "UK", logo: liverpool_logo_url, website: 'www.liverpoolrollerbirds.co.uk/' }
])
puts 'Leagues created'

puts 'Creating users'

users = User.create!([
  { email: 'bomb@bear.com', password: 'azerty', derby_name: 'La terreur de Berlin Bombshells' },
  { email: 'wallbreakers@bear.com', password: 'azerty', derby_name: 'La terreur de Wallbreakers' },
  { email: 'breaking@bear.com', password: 'azerty', derby_name: 'La terreur de Breaking Bears' },
  { email: 'bunnies@lrg.com', password: 'azerty', derby_name: 'La terreur des Bad Bunnies' },
  { email: 'batardes@lrg.com', password: 'azerty', derby_name: 'La terreur des Glorious batardes' },
  { email: 'tetons@lrg.com', password: 'azerty', derby_name: 'La terreur des Tétons Flingueurs' },
  { email: 'all_stars@prg.com', password: 'azerty', derby_name: 'La terreur des All Stars de Paris' },
  { email: 'quedalles@prg.com', password: 'azerty', derby_name: 'La terreur des Quedalles' },
  { email: 'sans_culottes@prg.com', password: 'azerty', derby_name: 'La terreur de Sans culottes' },
  { email: 'nasty@montreuil.com', password: 'azerty', derby_name: 'La terreur des Nasty pécheresses' },
  { email: 'rsm_b@montreuil.com', password: 'azerty', derby_name: 'La terreur des RSM B' },
  { email: 'beastie@beaste.com', password: 'azerty', derby_name: 'La terreur des Beasties' },
  { email: 'atlantic_breakers_a@cornwall.com', password: 'azerty', derby_name: 'La terreur des Atlanti Breakers A' },
  { email: 'atlantic_breakers_b@cornwall.com', password: 'azerty', derby_name: 'La terreur des Atlanti Breakers B' },
  { email: 'all_stars@stockholm.com', password: 'azerty', derby_name: 'La terreur des All Stars de Stockholm' },
  { email: 'bstrds@stockholm.com', password: 'azerty', derby_name: 'La terreur de la BSTRDs de Stockholm' },
  { email: 'c_star@stockholm.com', password: 'azerty', derby_name: 'La terreur de la C Stars de Stockholm' },
  { email: 'sisters@liverpool.com', password: 'azerty', derby_name: 'La terreur des Sisters of Mersey' },
  { email: 'yellow_shovemarines@liverpool.com', password: 'azerty', derby_name: 'La terreur des Yellow Shovemarines' },
  { email: 'c_team@liverpool.com', password: 'azerty', derby_name: 'La terreur de la C Team de Liverpool' }
])

puts "#{User.count} users created"

puts 'Creating teams'

teams = Team.create!([
  { name: 'Berlin Bombshells', ranking: 9, league_id: 1, user_id: 1, photo: bear_city_logo_url },
  { name: 'Wallbreakers', ranking: 104, league_id: 1, user_id: 2, photo: wallbreakers_logo_url },
  { name: 'Breaking Bears', ranking: 296, league_id: 1, user_id: 3, photo: breaking_bears_logo_url },
  { name: 'Bad bunnies', ranking: 11, league_id: 2, user_id: 4, photo: lrg_logo_url },
  { name: 'Glorious batardes', ranking: 82, league_id: 2, user_id: 5, photo: lrg_logo_url },
  { name: 'Tétons Flingueurs', ranking: 323, league_id: 2, user_id: 6, photo: lrg_logo_url },
  { name: 'All stars', ranking: 7, league_id: 3, user_id: 7, photo: prg_logo_url },
  { name: 'Les quedalles', ranking: 83, league_id: 3, user_id: 8, photo: prg_logo_url },
  { name: 'Les sans culottes', ranking: 413, league_id: 3, user_id: 9, photo: prg_logo_url },
  { name: 'Les nasty pécheresses', ranking: 259, league_id: 4, user_id: 10, photo: montreuil_logo_url },

  { name: 'All stars', ranking: 171, league_id: 5, user_id: 12, photo: beastie_logo_url },
  { name: 'Atlantic Breakers A', ranking: 367, league_id: 6, user_id: 13, photo: cornwall_logo_url },
  { name: 'Atlantic Breakers B', ranking: 342, league_id: 6, user_id: 14, photo: cornwall_b_logo_url },
  { name: 'All Stars', ranking: 6, league_id: 7, user_id: 15, photo: stockholm_logo_url },
  { name: 'BSTRDs', ranking: 59, league_id: 7, user_id: 16, photo: stockholm_b_logo_url },
  { name: 'C-Stars', ranking: 249, league_id: 7, user_id: 17, photo: stockholm_logo_url },
  { name: 'Sisters of Mersey', ranking: 74, league_id: 8, user_id: 18, photo: liverpool_logo_url },
  { name: 'Yellow Shovemarines', ranking: 195, league_id: 8, user_id: 19, photo: yellow_shovemarines_logo_url },
  { name: 'C Team', ranking: 360, league_id: 8, user_id: 20, photo: liverpool_logo_url }
])

puts "#{Team.count} teams created"


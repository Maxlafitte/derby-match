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

bear_city_logo = "http://flattrackstats.com/sites/default/files/imagecache/profile/logos/BCRD-Bear\%20City%20Roller\%20Derby_0.png"
lrg_logo_url = 'http://flattrackstats.com/sites/default/files/imagecache/profile/logos/46446955_1505484136222040_7836643361741078528_n.png'
prg_logo_url = 'http://flattrackstats.com/sites/default/files/imagecache/profile/logos/Paris%20Rollergirls.jpg'
montreuil_logo_url = 'http://flattrackstats.com/sites/default/files/imagecache/profile/logos/Montreuil%20logo.png'
beastie_logo_url = 'http://flattrackstats.com/sites/default/files/imagecache/profile/logos/reims.jpg'

puts 'Creating leagues'

leagues = League.create!([
  { name: 'Bear City Roller Derby', city: "Berlin", country: "Germany", logo: lrg_logo_url },
  { name: 'Lomme Roller Girls', city: "Lomme", country: "France", logo: lrg_logo_url },
  { name: 'Paris Roller Girls', city: "Paris", country: "France", logo: prg_logo_url },
  { name: 'Roller Skating Montreuil', city: "Montreuil", country: "France",logo: montreuil_logo_url },
  { name: 'Beastie Derby Girls', city: "Rouen", country: "France", logo: beastie_logo_url }
])
puts 'Leagues created'

puts 'Creating users'

users = User.create!([
  { email: 'lrg@lrg.com', password: 'azerty', derby_name: 'La terreur de Lomme' },
  { email: 'prg@prg.com', password: 'azerty', derby_name: 'La terreur de Paris' },
  { email: 'montreuil@montreuil.com', password: 'azerty', derby_name: 'La terreur de Montreuil' },
  { email: 'beastie@beaste.com', password: 'azerty', derby_name: 'La terreur de Reims' }
])

puts "#{User.count} users created"

puts 'Creating teams'

teams = Team.create!([
  { name: 'Bad bunnies', ranking: 11, league: League.first, user: User.first, photo: lrg_logo_url },
  { name: 'Glorious batardes', ranking: 12, league: League.first, user: User.second, photo: lrg_logo_url },
  { name: 'Tétons Flingueurs', ranking: 13, league: League.first, user: User.third, photo: lrg_logo_url },
  { name: 'All stars', ranking: 7, league: League.second, user: User.fourth, photo: prg_logo_url },
  { name: 'Les quedalles', ranking: 83, league: League.second, photo: prg_logo_url },
  { name: 'Les sans culottes', ranking: 413, league: League.second, photo: prg_logo_url },
  { name: 'Les nasty pécheresses', ranking: 259, league: League.third, photo: montreuil_logo_url },
  { name: 'All stars', ranking: 172, league: League.fourth, photo: beastie_logo_url }
])

puts "#{Team.count} teams created"


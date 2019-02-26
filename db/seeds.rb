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

lrg_logo_url = 'http://flattrackstats.com/sites/default/files/imagecache/profile/logos/46446955_1505484136222040_7836643361741078528_n.png'
prg_logo_url = 'http://flattrackstats.com/sites/default/files/imagecache/profile/logos/Paris%20Rollergirls.jpg'
montreuil_logo_url = 'http://flattrackstats.com/sites/default/files/imagecache/profile/logos/Montreuil%20logo.png'
beastie_logo_url = 'http://flattrackstats.com/sites/default/files/imagecache/profile/logos/reims.jpg'

puts 'Creating leagues'
leagues = League.create!([
  { name: 'Lomme Roller Girls', logo: lrg_logo_url },
  { name: 'Paris Roller Girls', logo: prg_logo_url },
  { name: 'Roller Skating Montreuil', logo: montreuil_logo_url },
  { name: 'Beastie Derby Girls', logo: beastie_logo_url }
])
puts 'Leagues created'

puts 'Creating users'

users = User.create!([
  { email: 'lrg@lrg.com', password: 'azerty', derby_name: 'La terreur de Lomme' },
  { email: 'prg@prg.com', password: 'azerty', derby_name: 'La terreur de Paris' },
  { email: 'montreuil@montreuil.com', password: 'azerty', derby_name: 'La terreur de Montreuil' },
  { email: 'beastie@beaste.com', password: 'azerty', derby_name: 'La terreur de Reims' }
])

puts 'Users created'

puts 'Creating teams'

teams = Team.create!([
  { name: 'Bad bunnies', ranking: 11, location: 'Lomme, France', league: League.first, user: User.first, photo: lrg_logo_url },
  { name: 'Glorious batardes', ranking: 12, location: 'Lomme, France', league: League.first, user: User.second, photo: lrg_logo_url },
  { name: 'Tétons Flingueurs', ranking: 13, location: 'Lomme, France', league: League.first, user: User.third, photo: lrg_logo_url },
  { name: 'All stars', ranking: 7, location:'Paris, France', league: League.second, user: User.fourth, photo: prg_logo_url },
  { name: 'Les quedalles', ranking: 83, location:'Paris, France', league: League.second, photo: prg_logo_url },
  { name: 'Les sans culottes', ranking: 413, location:'Paris, France', league: League.second, photo: prg_logo_url },
  { name: 'Les nasty pécheresses', ranking: 259, location: 'Montreuil, France', league: League.third, photo: montreuil_logo_url },
  { name: 'All stars', ranking: 172, location: 'Reims, France', league: League.fourth, photo: beastie_logo_url }
])

puts 'Teams created'


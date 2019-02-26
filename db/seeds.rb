# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Destroying all'
User.destroy_all
Team.destroy_all
League.destroy_all

lrg_logo_url = 'http://flattrackstats.com/sites/default/files/imagecache/profile/logos/46446955_1505484136222040_7836643361741078528_n.png'
prg_logo_url = 'http://flattrackstats.com/sites/default/files/imagecache/profile/logos/Paris%20Rollergirls.jpg'
montreuil_logo_url = 'http://flattrackstats.com/sites/default/files/imagecache/profile/logos/Montreuil%20logo.png'
beastie_logo_url = 'http://flattrackstats.com/sites/default/files/imagecache/profile/logos/reims.jpg'

puts 'Creating leagues'
leagues = League.create!([  {name: 'Lomme Roller Girls', logo: lrg_logo_url, city: 'Lomme', country: 'France'},
                            {name: 'Paris Roller Girls', logo: prg_logo_url, city: 'Paris', country: 'France'},
                            {name: 'Roller Skating Montreuil', logo: montreuil_logo_url, city: 'Montreuil', country: 'France'},
                            {name: 'Beastie Derby Girls', logo: beastie_logo_url, city: 'Reims', country: 'France'}
                          ])
puts "#{League.count} leagues created"

puts 'Creating users'
users = User.create!([{email: 'lrg@lrg.com', password: 'azerty', derby_name: 'La terreur de Lomme', photo: 'https://api.adorable.io/avatars/285/abott@adorable.png'},
                      {email: 'prg@prg.com', password: 'azerty', derby_name: 'La terreur de Paris', photo: 'https://api.adorable.io/avatars/285/abott@adorable.png'},
                      {email: 'montreuil@montreuil.com', password: 'azerty', derby_name: 'La terreur de Montreuil', photo: 'https://api.adorable.io/avatars/285/abott@adorable.png'},
                      {email: 'beastie@beaste.com', password: 'azerty', derby_name: 'La terreur de Reims', photo: 'https://api.adorable.io/avatars/285/abott@adorable.png'}
                    ])
puts "#{User.count} users created"

puts 'Creating teams'
teams = Team.create!([
                      {name: 'Bad bunnies', ranking: 11, league_id: 1, user_id: 1},
                      {name: 'Glorious batardes', ranking: 12, league_id: 1, user_id: 1},
                      {name: 'Tétons Flingueurs', ranking: 13, league_id: 1, user_id: 1},
                      {name: 'All stars', ranking: 7, league_id: 2, user_id: 2},
                      {name: 'Les quedalles', ranking: 83, league_id: 2, user_id: 2},
                      {name: 'Les sans culottes', ranking: 413, league_id: 2, user_id: 2},
                      {name: 'Les nasty pécheresses', ranking: 259, league_id: 3, user_id: 3},
                      {name: 'All stars', ranking: 172, league_id: 4, user_id: 4}
                    ])
puts "#{Team.count} teams created"


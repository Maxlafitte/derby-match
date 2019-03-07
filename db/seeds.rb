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
gent_logo_url = 'http://flattrackstats.com/sites/default/files/imagecache/profile/logos/15272144_1112881932173777_308482559445748074_o.png'
strasbourg_logo_url = 'http://flattrackstats.com/sites/default/files/imagecache/profile/logos/strasbourg.png'
thonon_logo_url = 'http://flattrackstats.com/sites/default/files/imagecache/profile/logos/26758202_1581180461966250_5353295191094500607_o.jpg'
pigalle_logo_url = 'http://flattrackstats.com/sites/default/files/imagecache/profile/logos/lesgueuses.png'
london_logo_url = 'http://flattrackstats.com/sites/default/files/imagecache/profile/logos/londonrollergirls.png'
manchester_logo_url = 'http://flattrackstats.com/sites/default/files/imagecache/profile/logos/18951219_1527500033968656_8121445271991155138_n.jpg'
manchester2_logo_url = 'http://flattrackstats.com/sites/default/files/imagecache/profile/logos/22050251_1574011745992244_8851170772063245293_n.jpg'
norwich_logo_url = 'http://flattrackstats.com/sites/default/files/imagecache/profile/logos/22050251_1574011745992244_8851170772063245293_n.jpg'
norwich2_logo_url = 'http://flattrackstats.com/sites/default/files/imagecache/profile/logos/BlackShuckLogo_onWHITE_FIN.png'
bordeaux_logo_url = 'http://flattrackstats.com/sites/default/files/imagecache/profile/logos/bordeaux.jpg'
lutece_logo_url = 'http://flattrackstats.com/sites/default/files/imagecache/profile/logos/rollerderbyparis.png'

puts 'Creating leagues'
league_1 = League.create!(name: 'Bear City Roller Derby', city: "Berlin", country: "Germany", logo: bear_city_logo_url, latitude: 52.52437, longitude: 13.41053, website: 'bearcityrollerderby.com/')
league_2 = League.create!(name: 'Lomme Roller Girls', city: "Lomme", country: "France", logo: lrg_logo_url, latitude: 50.6395, longitude: 3.011510000000044, website: 'https://www.lommerollergirls.com/')
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
league_14 = League.create!(name: 'GO-GO Gent Roller Derby', city: "Gent", country: "Belgium", logo: gent_logo_url, latitude: 51.0538, longitude: 3.7250099999999975, website: 'www.gogogent.be')
league_15 = League.create!(name: 'Hells Ass Derby Girls', city: "Strasbourg", country: "France", logo: strasbourg_logo_url, latitude: 48.5733, longitude: 7.752280000000042, website: 'hellsassderbygirls.com')
league_16 = League.create!(name: 'Les Biches Roller Derby', city: "Thonon-les-Bains", country: "France", logo: thonon_logo_url , latitude: 46.3705, longitude: 6.479820000000018, website: 'https://www.facebook.com/taxiderbiches')
league_17 = League.create!(name: 'Les Gueuses de Pigalle', city: "Paris", country: "France", logo: pigalle_logo_url, latitude: 48.8566101, longitude: 2.3514992, website: 'https://www.facebook.com/pages/Les-Gueuses-de-Pigalle/119934614845676?f')
league_18 = League.create!(name: 'London Rollergirls', city: "London", country: "UK", logo: london_logo_url, latitude: 51.4893335, longitude: -0.1440551, website: 'www.londonrollergirls.com')
league_19 = League.create!(name: 'Manchester Roller Derby', city: "Manchester", country: "UK", logo: manchester_logo_url, latitude: 53.4791301, longitude: -2.2441009, website: 'manchesterrollerderby.com/teams/checkerbroads')
league_20 = League.create!(name: 'Norfolk Roller Derby', city: "Norwich", country: "UK", logo: norwich_logo_url, latitude: 44.841225, longitude: 1.29227, website: 'www.norfolkbrawds.com')
league_21 = League.create!(name: 'Roller Derby Bordeaux', city: "Bordeaux", country: "France", logo: bordeaux_logo_url, latitude: 52.628606, longitude: -0.5800364, website: 'rollerderbybordeaux.fr')
league_22 = League.create!(name: 'Lutece Destroyeuses Roller Derby', city: "Paris", country: "France", logo: lutece_logo_url, latitude: 48.8566101, longitude: 2.3514992, website: 'lutecedestroyeuses.com')


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
user_32 = User.create!(email: 'banshee@dublin.com', password: 'azerty', derby_name: 'Gent Banshee')
user_33 = User.create!(email: 'cherry@dublin.com', password: 'azerty', derby_name: 'Gent Cherry Choker')
user_34 = User.create!(email: 'deathrow@strasbourg.com', password: 'azerty', derby_name: 'Strasbourg Deathrow Roller')
user_35 = User.create!(email: 'biohazard@strasbourg.com', password: 'azerty', derby_name: 'Strasbourg Biohazard')
user_36 = User.create!(email: 'contagious@thonon.com', password: 'azerty', derby_name: 'Thonon Contagious')
user_37 = User.create!(email: 'shock@thonon.com', password: 'azerty', derby_name: 'Thonon Shock')
user_38 = User.create!(email: 'sabotage@paris.com', password: 'azerty', derby_name: 'Pigalle Sabotage')
user_39 = User.create!(email: 'bitchy@paris.com', password: 'azerty', derby_name: 'Pigalle Bitchy Butcher')
user_40 = User.create!(email: 'pepper@London.com', password: 'azerty', derby_name: 'London Pepper Spray')
user_41 = User.create!(email: 'rita@London.com', password: 'azerty', derby_name: 'London Rita Skater')
user_42 = User.create!(email: 'mummy@London.com', password: 'azerty', derby_name: 'London MadMummy')
user_43 = User.create!(email: 'zombie@manchester.com', password: 'azerty', derby_name: 'Manchester Zombie')
user_44 = User.create!(email: 'smasher@manchester.com', password: 'azerty', derby_name: 'Manchester Pumpkin Smasher')
user_45 = User.create!(email: 'indominous@norwich.com', password: 'azerty', derby_name: 'Norwich Indominous')
user_46 = User.create!(email: 'big@norwich.com', password: 'azerty', derby_name: 'Norwich Big Rig')
user_47 = User.create!(email: 'miss@bordeaux.com', password: 'azerty', derby_name: 'Bordeaux Miss Fortune')
user_48 = User.create!(email: 'road@bordeaux.com', password: 'azerty', derby_name: 'Bordeaux Road Rager')
user_49 = User.create!(email: 'lord@lutece.com', password: 'azerty', derby_name: 'Lutece Lord of the Rink')
user_50 = User.create!(email: 'chopbuster@lutece.com', password: 'azerty', derby_name: 'Lutece Chopbuster')
user_51 = User.create!(email: 'jay@lutece.com', password: 'azerty', derby_name: 'Lutece Blockingjay')

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
  { name: 'All stars', ranking: 65, league: league_14, user: user_32, photo: gent_logo_url},
  { name: 'The Cubs', ranking: 166, league: league_14, user: user_33, photo: gent_logo_url},
  { name: 'All stars', ranking: 127, league: league_15, user: user_34, photo: strasbourg_logo_url},
  { name: 'The Team B East', ranking: 471, league: league_15, user: user_35, photo: strasbourg_logo_url},
  { name: 'Les Biches Deluxe', ranking: 93, league: league_16, user: user_36, photo: thonon_logo_url},
  { name: 'Les Taxider Biches', ranking: 355, league: league_16, user: user_37, photo: thonon_logo_url},
  { name: 'Les Sacrées sans Coeur', ranking: 243, league: league_17, user: user_38, photo: pigalle_logo_url},
  { name: 'Les Buttées de Montmartre', ranking: 417, league: league_17, user: user_39, photo: pigalle_logo_url},
  { name: 'London Brawling', ranking: 1, league: league_18, user: user_40, photo: london_logo_url},
  { name: 'London Batter C Power', ranking: 42, league: league_18, user: user_41, photo: london_logo_url},
  { name: 'London Brawl Saints', ranking: 16, league: league_18, user: user_42, photo: london_logo_url},
  { name: 'Checkerbroads', ranking: 95, league: league_19, user: user_43, photo: manchester_logo_url},
  { name: 'Furies', ranking: 453, league: league_19, user: user_44, photo: manchester2_logo_url},
  { name: 'Norfolk Roller Derby', ranking: 34, league: league_20, user: user_45, photo: norwich_logo_url},
  { name: 'Black Shucks', ranking: 398, league: league_20, user: user_46, photo: norwich2_logo_url},
  { name: 'Les Petites Morts', ranking: 96, league: league_21, user: user_47, photo: bordeaux_logo_url},
  { name: 'Compagnie Cruelle', ranking: 232, league: league_21, user: user_48, photo: bordeaux2_logo_url},
  { name: 'Les Encastreuses', ranking: 51, league: league_22, user: user_49, photo: lutece_logo_url},
  { name: 'Les Ptites Frappes', ranking: 192, league: league_22, user: user_50, photo: lutece_logo_url},
  { name: 'Les Canailles', ranking: 455, league: league_22, user: user_51, photo: lutece_logo_url},
])

puts "#{Team.count} teams created"


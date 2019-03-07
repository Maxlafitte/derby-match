require 'rest-client'

namespace :scrapp_data do
  desc "scrapp flattrackstat"

  task scrapp: :environment do
    #scrap of all pages of leagues (same as travel teams)
    puts "Destroying all leagues..."
    Game.destroy_all
    Request.destroy_all
    Team.destroy_all
    League.destroy_all
    puts "Ready to create leagues!"
    [0, 1, 2, 3, 4].each do |page_number|
      url = "http://flattrackstats.com/teams/results/taxonomy\%3A17\%2C11\%2C49?page=#{page_number}"
      html_file = open(url).read.encode!('UTF-8', 'UTF-8', :invalid => :replace)
      html_doc = Nokogiri::HTML(html_file)
      # In the teams table we look for the info we need
      html_doc.search('tr').each_with_index do |element, i|
        # First line of the table is a table head so we skip it
        next if i == 0

        puts "scrapping...."
        # BASIC LEAGUE ELEMENTS : NAME AND URL
        league_name = element.search('.views-field-title a').text.strip
        path = element.search('.views-field-title a').attribute('href')
        lead_team_number = path.value.match(/\d+/)[0]
        league_url = "http://flattrackstats.com#{path}"
        league_html_file = open(league_url).read.encode!('UTF-8', 'UTF-8', :invalid => :replace)
        league_html_doc = Nokogiri::HTML(league_html_file)

        logo = league_html_doc.search('.logo img')
        website = league_html_doc.search('.website').text.strip
        location = league_html_doc.search('.large').text.strip

        # LOCATION WITH ALGOLIA
        algolia_location = JSON.parse((RestClient.post "https://places-dsn.algolia.net/1/places/query", {'query' => "#{location}"}.to_json, {content_type: :json, accept: :json}))
        response = algolia_location["hits"]
        if algolia_location["nbHits"].positive?
          response[0]["country"]["en"].nil? ? country = response[0]["country"]["default"] : country = response[0]["country"]["en"]
          response[0]["locale_names"]["en"].nil? ? city = response[0]["locale_names"]["default"][0] : city = response[0]["locale_names"]["en"]
          latitude = response[0]["_geoloc"]["lat"]
          longitude = response[0]["_geoloc"]["lng"]
          # From there, we create a new league
          league = League.new(
                              name: league_name,
                              city: city,
                              country: country,
                              logo: logo,
                              latitude: latitude,
                              longitude: longitude,
                              website: website
                              )

          if league.valid?
            league.save!
            puts "league created #{league.name}"
            lead_team_name = league_html_doc.search('.teamname').text.match(/"(.*)"/)[1]
            ranking_url = "http://flattrackstats.com/rankings/women/women_europe"
            ranking_html_file = open(ranking_url).read.encode!('UTF-8', 'UTF-8', :invalid => :replace)
            ranking_html_doc = Nokogiri::HTML(ranking_html_file)
            ranking_html_doc.search('.rankingscontainer.rightflush tr').each do |element|

              if element.search('a')[0].nil?
                puts "not a row"
              else
                row = element.search('a')[0].attributes["href"].value

                if row.match(/\d+/)[0] == lead_team_number
                  lead_team_ranking = element.children.children[0].text.delete('.')
                  lead_team = Team.new(name: lead_team_name, league_id: league.id, ranking: lead_team_ranking)
                  if lead_team.valid?
                    puts "Team created #{lead_team.name}"
                    lead_team.save!
                    league_html_doc.search('.relatedteams a').each do |element|
                      puts "scrapping...."
                      # p element.attributes["class"].value
                      unless element.attributes["class"].value == "disbanded"
                        secondary_team_name = element.text.strip
                        secondary_team_number = element.attribute('href').value.match(/\d+/)[0]
                        ranking_html_doc.search('.rankingscontainer.rightflush tr').each do |element|
                          if element.search('a')[0].nil?
                            puts "not a row"
                          else
                            row = element.search('a')[0].attributes["href"].value
                            if row.match(/\d+/)[0] == secondary_team_number
                              secondary_team_ranking = element.children.children[0].text.delete('.')
                              secondary_team = Team.new(name: secondary_team_name, league_id: league.id, ranking: secondary_team_ranking)
                              if secondary_team.valid?
                                secondary_team.save!
                                puts "Team created #{secondary_team.name}"
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
        puts "Created #{League.count} leagues!"
        puts "Created #{Team.count} teams!"
      end
    end
  end
end

require 'rest-client'

namespace :scrapp_data do
  desc "scrapp flattrackstat"
  task scrapp: :environment do
    #scrap of all pages of leagues (same as travel teams)
    puts "Destroying all leagues..."
    League.destroy_all
    puts "Reading to create leagues!"
    [0, 1, 2, 3, 4].each do |page_number|
      url = "http://flattrackstats.com/teams/results/taxonomy\%3A17\%2C11\%2C49?page=#{page_number}"
      html_file = open(url).read.encode!('UTF-8', 'UTF-8', :invalid => :replace)
      html_doc = Nokogiri::HTML(html_file)
      # In the teams table we look for the info we need
      html_doc.search('tr').each_with_index do |element, i|
        # First line of the table is a table head so we skip it
        next if i == 0

        puts "scrapping...."
        # We look for the league data
        league_name = element.search('.views-field-title a').text.strip

        # Path to the league page
        path = element.search('.views-field-title a').attribute('href')

        league_url = "http://flattrackstats.com#{path}"
        league_html_file = open(league_url).read.encode!('UTF-8', 'UTF-8', :invalid => :replace)
        league_html_doc = Nokogiri::HTML(league_html_file)
        # In the league page we take the logo
        logo = league_html_doc.search('.logo img')
        website = league_html_doc.search('.website').text.strip
        location = league_html_doc.search('.large').text.strip

        algolia_location = JSON.parse((RestClient.post "https://places-dsn.algolia.net/1/places/query", {'query' => "#{location}"}.to_json, {content_type: :json, accept: :json}))
        response = algolia_location["hits"]

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

          # create teams
        end
      end

      puts "Created #{League.count} leagues!"
    end
  end
end

namespace :api_test do
  desc "api algolia places"
  task api_test: :environment do
    url = "http://flattrackstats.com/teams/results/taxonomy\%3A17\%2C11\%2C49"
    html_file = open(url).read.encode!('UTF-8', 'UTF-8', :invalid => :replace)
    html_doc = Nokogiri::HTML(html_file)

    html_doc.search('tr').each_with_index do |element, i|
      next if i == 0
      if i == 72
        puts "scrapping...."

        p league_name = element.search('.views-field-title a').text.strip
        p location = element.search('.views-field-field-team-location-value')
        algolia_location = JSON.parse((RestClient.post "https://places-dsn.algolia.net/1/places/query", {'query' => "#{location}"}.to_json, {content_type: :json, accept: :json}))
        response = algolia_location["hits"]
        response[0]["country"]["en"].nil? ? country = response[0]["country"]["default"] : country = response[0]["country"]["en"]
        response[0]["locale_names"]["en"].nil? ? city = response[0]["locale_names"]["default"][0] : city = response[0]["locale_names"]["en"]
        p latitude = response[0]["_geoloc"]["lat"]
        p longitude = response[0]["_geoloc"]["lng"]
        p city
        p country
      end
    end
  end
end


namespace :scrapp_test do
  desc "scrapp flattrackstat"
  task test: :environment do
    url = "http://flattrackstats.com/teams/92567"
    html_file = open(url).read.encode!('UTF-8', 'UTF-8', :invalid => :replace)
    html_doc = Nokogiri::HTML(html_file)
    html_doc.search('.relatedteams a').each do |element|
      puts "scrapping...."
      #scraping du nom des équipes de la ligue
      team = element.text.strip
    end
    website = html_doc.search('.website').text.strip
    p city = html_doc.search('.large').text.strip
  end
end

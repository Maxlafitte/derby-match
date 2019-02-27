namespace :scrapp_data do
  desc "scrapp flattrackstat"
  task scrapp: :environment do
    [0, 1, 2, 3, 4].each do |page_number|
      url = "http://flattrackstats.com/teams/results/taxonomy\%3A17\%2C11\%2C49?page=#{page_number}"
      html_file = open(url).read.encode!('UTF-8', 'UTF-8', :invalid => :replace)
      html_doc = Nokogiri::HTML(html_file)

      html_doc.search('tr').each_with_index do |element, i|
        next if i == 0

        puts "scrapping...."

        league_name = element.search('.views-field-title a').text.strip
        location = element.search('.views-field-field-team-location-value').text.strip.split(', ')
        city = location[0]
        if location.length < 2
          country = city
        else
          country = location[1]
        end

        path = element.search('.views-field-title a').attribute('href')

        league_url = "http://flattrackstats.com#{path}"
        league_html_file = open(league_url).read.encode!('UTF-8', 'UTF-8', :invalid => :replace)
        league_html_doc = Nokogiri::HTML(league_html_file)
        logo = league_html_doc.search('.logo img')

        league = League.new name: league_name, city: city, country: country, logo: logo

        if league.valid?
          league.save!
          puts "league created"

          # create teams
        end
      end

      puts "Created #{League.count} leagues!"
    end
  end
end

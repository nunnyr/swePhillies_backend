# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#test = Info.create(name: 'Nunny Reyes', salary:300000, year:2016, level:'MLB')

require 'open-uri'
require 'nokogiri'
require 'activerecord-reset-pk-sequence'
Info.destroy_all
Info.reset_pk_sequence


def mlbContract
    html = open("https://questionnaire-148920.appspot.com/swe/data.html")
    doc = Nokogiri::HTML.parse(html)
  
    player_name = (doc.css("table tbody tr td.player-name"))
    player_salary = (doc.css("table tbody tr td.player-salary"))
    player_year = (doc.css("table tbody tr td.player-year"))
    player_level = (doc.css("table tbody tr td.player-level"))
    #puts(detail)
    

    player_length = player_name.length()

    # puts(player_name.length())
    # puts(player_salary.length())
    # puts(player_year.length())
    # puts(player_level.length())

    for i in 0...player_length 
       Info.create(name:player_name[i].content, salary:player_salary[i].content, year:player_year[i].content, level:player_level[i].content)
    end

    
end

mlbContract()
require 'open-uri' #library for ruby so it can render urls
require 'json' #library for parsing JSON to Ruby 

print 'What is your location?'
location = gets.chomp.capitalize 


APPID = 'Your api key here'
file = open('http://api.openweathermap.org/data/2.5/weather?q=' + location + '&APPID=' + APPID) 
contents = file.read #reads what is on the page in json format
parsed = JSON.parse(contents) #transforms json code to ruby code
weather = parsed["weather"]
weather_description = weather[0].fetch('description')
puts "The weather in #{ location } : #{ weather_description }"


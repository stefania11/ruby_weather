require 'open-uri' #library for ruby so it can render urls
require 'json'

def define_location
print 'What is your location?'
location = gets.chomp.capitalize
end

def parse_json 
file = open('api.openweathermap.org/data/2.5/weather?q=' + location)
contents = file.read
JSON.parse(contents)
end

def weather_description(location,parsed_json) 
weather = ["weather"]
weather_description = weather[0].fetch('description')
puts "The weather in #{ location } : #{ weather_description }"
end

define_location = location
weather_description = parsed_json (weather)
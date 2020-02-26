require "httparty"
require "geocoder"
require "forecast_io"
require 'date'

# url = "https://newsapi.org/v2/top-headlines?country=us&apiKey=bf5ac5ecf7b844b2af538df0fa34201b"
# news = HTTParty.get(url).parsed_response.to_hash
# articles = []
# for article in news["articles"]
#     source = article["source"]
#     title = article["title"]
#     link = article["url"]
#     puts "#{title} " + "#{link}"
# end

lat_lng = []
results = Geocoder.search("Chicago")
lat_lng = results.first.coordinates
lat = lat_lng[0]
lng = lat_lng[1]

ForecastIO.api_key = "37eea36982ddc3f378c0a1bcf299781a"
forecast = ForecastIO.forecast(lat,lng).to_hash
current_temp = forecast["currently"]["temperature"]
current_summary = forecast["currently"]["summary"]
daily_data = forecast["daily"]["data"][1]["time"]

t = Time.at(daily_data)

puts "#{t.month}/#{t.day}/#{t.year}"

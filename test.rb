require "httparty"

# url = "https://newsapi.org/v2/top-headlines?country=us&apiKey=bf5ac5ecf7b844b2af538df0fa34201b"
# news = HTTParty.get(url).parsed_response.to_hash
# articles = []
# for article in news["articles"]
#     source = article["source"]
#     title = article["title"]
#     link = article["url"]
#     puts "#{title} " + "#{link}"
# end

t = Time.now
puts "#{t.month}/#{t.day}/#{t.year}"
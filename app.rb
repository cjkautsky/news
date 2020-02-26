require "sinatra"
require "sinatra/reloader"
require "geocoder"
require "forecast_io"
require "httparty"
def view(template); erb template.to_sym; end
before { puts "Parameters: #{params}" }                                     

# enter your Dark Sky API key here
ForecastIO.api_key = "37eea36982ddc3f378c0a1bcf299781a"

get "/" do
  view "ask"
end

get "/news" do
    view "news"
end
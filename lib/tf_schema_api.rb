require "net/http"
require "json"
require "pry"
require "dotenv-rails"

@key = ENV["STEAM_API_KEY"]
binding.pry

class Items

  def initialize

    @items = get_items
  end


  private

  def get_items
    response = Net::HTTP.get_response(uri)
    JSON.parse(response.body)
  end

  def uri
    URI("http://api.steampowered.com/IEconItems_440/GetSchema/v0001/?key=#{@key}")
  end
end

a_test = Items.new
binding.pry

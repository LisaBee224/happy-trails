
class TrailsController < ApplicationController

  def show


  end

  def index

    response = HTTParty.get "https://trailapi-trailapi.p.mashape.com/",
    headers:{
    "X-Mashape-Key" => "8UWBorcFvUmshd8zqT952LbcicNSp1Ay4AmjsnCrz6ic2qCv0r",
    "Accept" => "text/plain"
    }
    trails = []
    # @trail = response["places"].first.first
    response.each do |trail|
      new_trail = Hash.new

      new_trail['city'] << trail.second.first["city"]
      binding.pry
    end
    # json = JSON.parse(response.body)
    # binding.pry
    json['url']
    render 'index'
  end

  def search

  end
    def create
    api = TrailAPI.new()
    url = api.unique_url
  end
end


  #  response = HTTParty.get('https://trailapi-trailapi.p.mashape.com/')
  #       headers:{
  #   "X-Mashape-Key" => "Thtoq9CeEZmsh8IbdDP4haQGVoB8p1EV5zUjsnMD8ubOXSK7xl",
  #   "Accept" => "text/plain"
  # }
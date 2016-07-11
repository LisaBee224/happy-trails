
class TrailsController < ApplicationController

  def show


  end

  def index
    @trails = Trail.all
response = HTTParty.get "https://trailapi-trailapi.p.mashape.com/",
  headers:{
    "X-Mashape-Key" => "8UWBorcFvUmshd8zqT952LbcicNSp1Ay4AmjsnCrz6ic2qCv0r",
    "Accept" => "text/plain"
  }

    binding.pry
    # TODO more error checking (500 error, etc)
    json = JSON.parse(response.body)
    json['url']
    render 'index'

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
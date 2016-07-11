require 'httparty'
class TrailApi < ActiveRecord::Base

  def trail
     response = HTTParty.get('https://trailapi-trailapi.p.mashape.com/')
    # TODO more error checking (500 error, etc)
    json = JSON.parse(response.body)
    json['url']
  end
end


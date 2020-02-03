require 'rubygems'
require 'httparty'

class Showcase
  include HTTParty
  base_uri 'https://jsonplaceholder.typicode.com'

  def photos
    self.class.get('/photos')
  end
end

showcase = Showcase.new

showcase.photos.each do |photo|
  puts "(albumId): #{photo['albumId']} | (id): #{photo['id']} | (title): #{photo['title']} | (url): #{photo['url']} | (thumbnailUrl): #{photo['thumbnailUrl']}"
end

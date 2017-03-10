require 'rubygems'
require 'httparty'

class ResourceBase
  include HTTParty

  @@basic_auth = { username: "", password: "" }

  def self.all resource, *options
    HTTParty.get("https://qacomplete.smartbear.com/rest-api/service/api/v1/#{resource}/", basic_auth: @@basic_auth)["results"]
  end
end
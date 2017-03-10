require 'rubygems'
require 'activeresource'

class Project < ActiveResource::Base
  self.site = "https://www.pivotaltracker.com/services/v5/"
  self.headers["X-TrackerToken"] = ""
end 
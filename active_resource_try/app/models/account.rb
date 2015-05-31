require 'active_resource'

class Account < ActiveResource::Base
  self.site = "http://localhost:3000/"
end
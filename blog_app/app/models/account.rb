require 'active_resource'

class Account < ActiveResource::Base
  self.site = "http://mister:example@localhost:3000/"
end

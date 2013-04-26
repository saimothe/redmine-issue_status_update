#Install REST Client 
# -- gem install rest-client 
#Change status update with REST API Call 
#Call put method with status_id to update status


require 'rubygems'
require 'rest_client'
@res=RestClient.put 'http://localhost:3000/issues/25.json?key=apikey', File.read('demo'), :content_type => 'application/json'
puts @res.code
@getcall = RestClient.get 'http://localhost:3000/issues/25.json?key=apikey'
puts "**************"
puts @getcall
puts "*************"


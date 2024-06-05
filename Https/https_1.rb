require 'net/http'
require 'json'

url = URI.parse('https://www.codewars.com/api/v1/users/AndriiKot')
http = Net::HTTP.new(url.host, url.port)
http.use_ssl = (url.scheme == 'https')

request = Net::HTTP::Get.new(url.request_uri)

response = http.request(request)

if response.code == '200'
  data = JSON.parse(response.body)
  arr = %W_username honor leaderboardPosition ranks_ 
  template = ""
  arr.each_with_index do |element,i|
 
  end
end

require 'net/http'
require 'json'

url = URI.parse('https://www.codewars.com/api/v1/users/AndriiKot')
http = Net::HTTP.new(url.host, url.port)
http.use_ssl = (url.scheme == 'https')

request = Net::HTTP::Get.new(url.request_uri)

response = http.request(request)

if response.code == '200'
  data = JSON.parse(response.body)
  ranks = "ranks['overall']"
  overall_kyu = ranks + "['name']"
  overall_score = ranks +"['score']"
  languages = ranks + "['languages']"
  arr = %W_username honor leaderboarPosition #{overall_kyu}
        #{overall_score} #{languages}_ 
  p arr
end

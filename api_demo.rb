require "json"
require "open-uri"

# TODO - Let's fetch name and bio from a given GitHub username
url = "https://api.github.com/users/ssaunier"

user = JSON.parse(URI.open(url).read)

puts "#{user['name']} is in #{user['location']} and has #{user['followers']} followers"

puts "#{user['avatar_url']}"

require "open-uri"
require "nokogiri"

# Let's scrape recipes from https://www.bbcgoodfood.com

puts "Please type an ingredient"
print "> "
ingredient = gets.chomp

url = "https://www.bbcgoodfood.com/search/recipes?q=#{ingredient}"
serialized_url = URI.open(url).read
doc = Nokogiri::HTML(serialized_url)

doc.search(".standard-card-new__article-title").first(5).each do |recipe|
  puts recipe.text.strip
end

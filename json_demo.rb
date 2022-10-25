require "json"

# TODO - let's read/write data from beatles.json
filepath = "data/beatles.json"

# serialized_file = File.open(filepath).read
# results = JSON.parse(serialized_file)

beatles = { beatles: [
  {
    first_name: "John",
    last_name: "Lennon",
    instrument: "Guitar"
  },
  {
    first_name: "Paul",
    last_name: "McCartney",
    instrument: "Bass Guitar"
  }
  ]
}
# results['beatles'].map do |beatle|
#   puts "#{beatle['first_name']} plays the #{beatle['instrument']}"
# end

File.open(filepath, 'wb') do |file|
  file.write(JSON.generate(beatles))
end

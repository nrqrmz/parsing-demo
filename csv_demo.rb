require "csv"

# TODO - let's read/write data from beatles.csv
filepath = "data/beatles.csv"

# CSV.foreach(filepath, headers: :first_row) do |row|
#   puts "#{row['First Name']} #{row['Last Name']} plays the #{row['Instrument']}"
# end

CSV.open(filepath, 'wb') do |csv|
  csv << ['Freddy', 'Mercury', 'Mercury']
end

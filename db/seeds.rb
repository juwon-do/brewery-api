require 'csv'


CSV.foreach("/Users/alexlam/Downloads/Brew.csv", headers: true) do |row|
  Brewery.create(
    brewery_name: row[0],
    address: row[2],
    website: row[3],
    state: row[4],
    state_breweries: row[5]
  )
end

results = Geocoder.search("Paris")
p results.first.coordinates

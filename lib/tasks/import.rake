namespace :import do
  desc "Import venues from foursquare"
  task :venues, [:near] => :environment do |t, args|

    client = Foursquare2::Client.new(
        client_id: 'B5ORJYE5WQ1JTR01PQQCY4LYV3TYPWKAKQNOVRBN3RYDDNH5',
        client_secret: 'OADRME122IWMBAWGHQXNRB11YBJ0QJHX22ENDWWLHXLZ4JEC',
        api_version: '20170101')

    result = client.search_venues(near: args[:near].to_s, query: 'restaurants', intent: 'browse')
    result.venues.each do |v|
      venue_object = Venue.new(name: v.name, address: v.location.address, country: v.location.country, latitude: v.location.lat, longitude: v.location.lng)

      v.categories.each do |c|
        venue_object.categories << Category.find_or_create_by(name: c.shortName)
      end

      venue_object.save

      puts "'#{venue_object.name}' - imported"
    end
  end

end

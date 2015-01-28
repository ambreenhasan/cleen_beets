require 'itunes-search-api'
require 'Date'

module ITunes
  class API
    attr_reader :results, :artist_name, :collection_name, :track_censored_name, :release_year, :primary_genre_name, :track_number
    def self.search(searchable)
      @results = ITunesSearchAPI.search(:term => searchable, :country => "US", :media => "music")
    end

    def self.parse_results
      @results.each do |track|
        puts "#{track["artistName"]} - #{track["collectionName"]} - #{track["trackCensoredName"]}"
        puts Date._strptime(track["releaseDate"])[:year]
        puts track["primaryGenreName"]
        puts track["trackNumber"]
      end
    end
  end
end

# artistName, collectionName, trackCensoredName, releaseDate, primaryGenreName, trackNumber


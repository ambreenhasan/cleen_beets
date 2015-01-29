require 'itunes-search-api'
require 'Date'

module ITunes
  class API
    attr_reader :results, :parsed
    def self.search(searchable)
      @results = ITunesSearchAPI.search(:term => searchable, :country => "US", :media => "music")
    end

    def self.parse_results
      @parsed = @results.map do |track|
        {:artist_name => track["artistName"], :collection_name => track["collectionName"], :track_censored_name => track["trackCensoredName"], :release_year => Date._strptime(track["releaseDate"])[:year], :primary_genre_name => track["primaryGenreName"], :track_number => track["trackNumber"]}
      end

      p track

      p @parsed
    end
  end
end

# artistName, collectionName, trackCensoredName, releaseDate, primaryGenreName, trackNumber


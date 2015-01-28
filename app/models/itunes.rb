require 'itunes-search-api'
require 'Date'

module ITunes
  class API
    attr_reader :results, :parsed, :artist_name, :collection_name, :track_censored_name, :release_year, :primary_genre_name, :track_number
    def self.search(searchable)
      @results = ITunesSearchAPI.search(:term => searchable, :country => "US", :media => "music")
    end

    def self.parse_results
      @parsed = @results.inject({}) do |track, result|
        # @parsed = {:artist_name => track["artistName"], :collection_name => track["collectionName"], :track_censored_name => track["trackCensoredName"], :release_year => Date._strptime(track["releaseDate"])[:year], :primary_genre_name => track["primaryGenreName"], :track_number => track["trackNumber"]}

        # p track_info
        # p result[:]

        # p track_infoartist_name]

        track[:artist_name] = result["artistName"]
        # @parsed[:collection_name] = track_info["collectionName"]
        # @parsed[:track_censored_name] = track_info["trackCensoredName"]
        # @artist_name = track["artistName"]
        # p "#{track["artistName"]} - #{track["collectionName"]} - #{track["trackCensoredName"]}"
        # puts
        # puts track["primaryGenreName"]
        # puts track["trackNumber"]
      end

      puts @parsed
    end
  end
end

# artistName, collectionName, trackCensoredName, releaseDate, primaryGenreName, trackNumber


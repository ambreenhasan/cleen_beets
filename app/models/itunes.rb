require 'itunes-search-api'
require 'pathname'
require 'Date'

module ITunes
  class API
    attr_reader :results, :parsed
    def self.search(searchable)
      parse_search(searchable)
      # @results = ITunesSearchAPI.search(:term => searchable, :country => "US", :media => "music")
    end

    def self.parse_search(directory_path)
      file_base = File.basename(directory_path)
      cleaned = file_base.gsub(/[\.,-\/#$%\^&\*;:{}=\-_`~()]/, "")
      # compare with id3 tags
      cleaned.split(" ").find do |ele|
        if ele == ele
          p ele
        end
      end
    end

    def self.parse_results
      # @parsed = @results.map do |track|
      #   {:artist_name => track["artistName"], :collection_name => track["collectionName"], :track_censored_name => track["trackCensoredName"], :release_year => Date._strptime(track["releaseDate"])[:year], :primary_genre_name => track["primaryGenreName"], :track_number => track["trackNumber"]}
      # end
    end
  end
end


require 'itunes-search-api'
require 'taglib'
require 'pathname'
require 'Date'

module ITunes
  class API
    attr_reader :results, :parsed
    def self.search(searchable)
      input = parse_search(searchable)
      @results = ITunesSearchAPI.search(:term => input, :country => "US", :media => "music")

      raise NoResultsError if @results
    end

    def self.parse_search(directory_path)
     searchable_terms = []
     TagLib::MPEG::File.open(directory_path) do |file|
      tag = file.id3v2_tag
      return "File cannot be edited." if tag.artist.nil? || tag.title.nil?
      searchable_terms << tag.artist
      searchable_terms << tag.title
      end
      searchable_terms.join(" ")
    end

    def self.parse_results
      @parsed = @results.map do |track|
        {:artist_name => track["artistName"], :collection_name => track["collectionName"], :track_censored_name => track["trackCensoredName"], :release_year => Date._strptime(track["releaseDate"])[:year], :primary_genre_name => track["primaryGenreName"], :track_number => track["trackNumber"]}
      end
      @parsed
    end
  end
end

class NoResultsError < StandardError
end
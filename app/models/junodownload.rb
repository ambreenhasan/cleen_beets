require 'mechanize'
require 'pp'

module JunoDownload
  class Scraper

    def self.page
      agent = Mechanize.new
      return agent.get('http://junodownload.com')
    end

    def self.search(song)
      juno_search = page.form
      search_field = juno_search.field_with(name: "q[all][]")

      search_field.value = song

      home_page = juno_search.submit

      tracks_page = home_page.link_with(:text => "\r\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tTracks\r\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t").click

      pp tracks_page
    end
  end
end


pp JunoDownload::Scraper.search("solee phoenix johannes brecht remix")




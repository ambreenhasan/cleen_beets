require 'mechanize'
require 'json'
require 'pp'


module Beatport
  class Scraper

    def self.submit_search(song)
      agent = Mechanize.new
      page = agent.get("http://classic.beatport.com")

      beatport_search_form = page.form('global-search-form')
      beatport_search_form.query = song

      page = agent.submit(beatport_search_form, beatport_search_form.buttons.first)

      page = agent.page.link_with(:text => 'Estroe, Pawas - Jujeh').click

      page.search('#body > div.line.release-detail > div.unit.lastUnit > div:nth-child(5) > table').each do |track|
        track.children.first.attributes.each do |parsable|
          pp parsable
        end
      end

      @results = []
    end

    def self.parse_search(mp3_path)
    end

    def self.parse_results
    end
  end
end

Beatport::Scraper.submit_search("pawas jujeh estroe remix")
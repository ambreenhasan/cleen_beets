require 'taglib'

module ID3Tag
  class Editor
    attr_reader :artist, :album, :title
    def self.write_tags(mp3_file)
      TagLib::MPEG::File.open(mp3_file) do |file|

        tag = file.id3v2_tag
        puts "Tags are empty." if tag.title.nil?

        @artist = tag.title
        @album = tag.album
        @title = tag.title
        tag.title = "Guardian"
        tag.artist = "Cid Inc."
        tag.track = 1
        tag.album = "Guardian"
        tag.year = 2015
        tag.genre = "Progessive House"
        tag.comment = " "

        file.save

        puts "File has been saved."
      end
    end
  end
end
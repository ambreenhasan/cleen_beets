require 'taglib'

module ID3Tag
  class Editor
    attr_accessor :artist, :album, :title
    def self.write_tags(mp3_file)
      TagLib::MPEG::File.open(mp3_file) do |file|

        tag = file.id3v2_tag
        puts "Tags are empty." if tag.title.nil?

        tag.title = "Atlantique"
        tag.artist = "Damabiah"
        tag.track = 1
        tag.album = "Océans - Single"
        tag.year = 2015
        tag.genre = "Tech House"
        tag.comment = " "

        File.rename(mp3_file, "#{tag.artist} - #{tag.album} - #{tag.title}.mp3")

        file.save

        puts "File has been saved and renamed."
      end
    end
  end
end
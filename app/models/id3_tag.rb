require 'taglib'

# TODO: refactor the hell out of this
require 'pathname'

module ID3Tag
  class Editor
    def self.write_tags(mp3_file)
      TagLib::MPEG::File.open(mp3_file) do |file|

        tag = file.id3v2_tag
        puts "Tags are empty." if tag.title.nil?

        tag.title = "Pacifique"
        tag.artist = "Damabiah"
        tag.track = 2
        tag.album = "Océans - Single"
        tag.year = 2015
        tag.genre = "Indie House"
        tag.comment = " "

          pn = Pathname.new(mp3_file)

        File.rename(mp3_file, "#{pn.dirname}/#{tag.artist} - #{tag.album} - #{tag.title}.mp3")

        file.save

        puts "File has been saved and renamed."
      end


    end
  end
end
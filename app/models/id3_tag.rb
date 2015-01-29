# TODO: refactor the hell out of this
require 'taglib'
require 'pathname'
require 'fileutils'

module ID3Tag
  class Editor
    def self.write_tags(mp3_file)
      TagLib::MPEG::File.open(mp3_file) do |file|

        tag = file.id3v2_tag
        puts "Tags are empty." if tag.title.nil?

        tag.title = "System"
        tag.artist = "Einmusik"
        tag.track = 1
        tag.album = "System"
        tag.year = 2015
        tag.genre = "Tech House"
        tag.comment = " "

        # add picture frame
        # apic = TagLib::ID3v2::AttachedPictureFrame.new
        # apic.mime_type = "image/jpeg"
        # apic.description = "Cover"
        # apic.type = TagLib::ID3v2::AttachedPictureFrame::FrontCover
        # apic.picture = File.open("/Users/ambodumbo/Desktop/einmusik.jpg", 'rb') { |f| f.read }

        # tag.add_frame(apic)

        pn = Pathname.new(mp3_file)

        File.rename(mp3_file, "#{pn.dirname}/#{tag.artist} - #{tag.album} - #{tag.title}.mp3")

        # directory_name = File.basename(mp3_file)
        # rename directory
        # FileUtils.mv "#{pn.dirname}/#{directory_name}", "#{pn.dirname}/ #{tag.artist} - #{tag.album} (#{tag.year})"

        file.save

        puts "File has been saved and renamed."
      end


    end
  end
end
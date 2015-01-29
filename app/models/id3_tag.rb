require 'taglib'

module ID3Tag
  class Editor
    def self.read_tags_from(mp3_file)
      TagLib::MPEG::File.open(mp3_file) do |file|
        puts file
        tag = file.id3v2_tag
        puts tag


      end
    end
  end
end
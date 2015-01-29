require_relative 'id3_tag'

module MusicFile
  class Editor
    def self.rename_file(old_file)
      File.rename(old_file, MusicFile::Editor.new_file)
    end

    def self.new_file
      track_info = ID3Tag::Editor.new
      p track_info.artist
      # puts "#{track_info.artist} - #{track_info.album} - #{track_info.title}.mp3"
    end
  end
end
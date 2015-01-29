require_relative 'id3_tag'

module File
  class Editor
    def rename_file(old_file)
      File.rename(old_file, new_file)
    end

    def new_file
      return "#{ID3Tag::Editor.artist} - #{ID3Tag::Editor.album} - #{ID3Tag::Editor.title}"
    end
  end
end
require_relative 'config/application'

# ITunes::API.search("henry saiz haunted girl canyon")
# ITunes::API.parse_results
ID3Tag::Editor.write_tags(ARGV[0])
# MusicFile::Editor.rename_file(ARGV[0])
# MusicFile::Editor.new_file
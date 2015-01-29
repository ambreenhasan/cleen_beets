require_relative 'config/application'

# ITunes::API.search("henry saiz haunted girl canyon")
# ITunes::API.parse_results
ID3Tag::Editor.write_tags(ARGV[0])

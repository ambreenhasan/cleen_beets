require_relative 'config/application'

ITunes::API.search(ARGV[0])
# ITunes::API.parse_results
# ID3Tag::Editor.write_tags(ARGV[0])

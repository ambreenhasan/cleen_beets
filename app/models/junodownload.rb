require 'mechanize'
require 'pp'

agent = Mechanize.new

page = agent.get('http://pro.beatport.com')

pp page.link_with(:href => '/genres')





# page.links.each do |link|
#   puts link.text
# end

# page = agent.page.links.find { |l| l.text == 'Search' }
# page = agent.page.link_with(:text => 'GENRES')
# puts page.form.inspect
# beatport_search_form = page.form('')

# puts page.inspect
require 'mechanize'

mech = Mechanize.new

page = mech.get("http://www.thesmokinggun.com/mugshots/celebrities")

# page.h3.each do |elem|
# 	puts elem
# end

html = page.parser

# html.css('div#col3').css('a h3').each do |elem|
# 	puts elem
# end

# profile = mech.get("http://www.thesmokinggun.com/mugshots/celebrity/hollywood/amanda-bynes")
# puts profile.search("img.imagecache-670xX")

# print "["
page.links_with( href: %r{/mugshots/celebrity/(hollywood|music|television)}).each do |elem|
	puts "http://www.thesmokinggun.com" + elem.href.to_s
	# mechanize = Mechanize.new
	# profile = mechanize.get("http://www.thesmokinggun.com" + elem.href)
	# img_link = profile.search("img.imagecache-670xX").xpath('@src')
	# image = profile.image(href: %r{http://www.thesmokinggun.com/sites/default/files/imagecache/670xX/photos/})
	# puts profile.parser.css("div.mugshot_container center").css('img')
  # puts '{ crime:  , name: "' + elem.text.to_s + '", url: "http://www.thesmokinggun.com' + elem.href.to_s + '", image: "' + img_link.to_s + '" }, '
end
# print "]"
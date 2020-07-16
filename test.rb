require 'nokogiri'
require 'rest-client'
currencie=[]
page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))

currencie = page.xpath(('//a[contains(@href, "currencies/")]'))

for i in currencie
  puts "#{i} "
end

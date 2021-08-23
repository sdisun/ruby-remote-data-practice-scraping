require 'nokogiri'
require 'open-uri'
require 'pry'

html = open("https://flatironschool.com/")
doc = Nokogiri::HTML(html) 
heading_text = doc.css('.headline-26OIBN').text
courses = doc.css(".inlineMobileLeft-2Yo002.imageTextBlockGrid2-3jXtmC")

puts "\n----HOMEPAGE HEADING----\n #{heading_text}"
puts "\n----AVAILABLE COURSES----"
courses.each {|course| puts course.text}
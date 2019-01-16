require 'rexml/document'
include REXML

xmlfile = File.new("C:\\Users\\Moklasur\\Desktop\\PATH_FINDER_TECH CORPORATION\\Batch2018\\Class2018Day3\\RubyFramework\\lib\\config\\data\\sample.xml")
xmldoc = Document.new(xmlfile)

# Info for the first movie found
movie = XPath.first(xmldoc, "//movie")
p movie

# Print out all the movie types
XPath.each(xmldoc, "//type") { |e| puts e.text }

# Get an array of all of the movie formats.
names = XPath.match(xmldoc, "//format").map {|x| x.text }
p names
require 'rexml/document'
include REXML

xmlfile = File.new("C:\\Users\\Moklasur\\Desktop\\PATH_FINDER_TECH CORPORATION\\Batch2018\\Class2018Day3\\RubyFramework\\lib\\config\\data\\sample.xml")
xmldoc = Document.new(xmlfile)

# Now get the root element
root = xmldoc.root
puts "Root element : " + root.attributes["shelf"]

# This will output all the movie titles.
xmldoc.elements.each("collection/movie"){
    |e| puts "Movie Title : " + e.attributes["title"]
}

# This will output all the movie types.
xmldoc.elements.each("collection/movie/type") {
    |e| puts "Movie Type : " + e.text
}

# This will output all the movie description.
xmldoc.elements.each("collection/movie/description") {
    |e| puts "Movie Description : " + e.text
}
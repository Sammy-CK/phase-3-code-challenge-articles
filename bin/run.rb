#!/usr/bin/env ruby

require_relative "../config/environment"

#Initialize new Author instance
sam = Author.new("Sammy Cherono")
kevin = Author.new("Kevin Korir")
allan = Author.new("Allan Aberi")
phil = Author.new("Philip Mutisya")


puts "Author#name:\n", sam.name, kevin.name,allan.name, phil.name, "\n"

#Initialize new Magazine instance
forbes = Magazine.new("Forbes Magazine", "Wealth")
architect = Magazine.new("Architect Digets", "Property")

#name on Magazine
puts "Magazine#name forbes: \n",forbes.name, "\n"

#category on Magazine
puts "Magazine#category forbes: \n",forbes.category, "\n"


pp "Before Magazine instance change:",forbes
forbes.name = "Forb Mag"
forbes.category = "Money"
pp "After Magazine instance change:", forbes
forbes.name = "Forbes Magazine"
forbes.category = "Wealth"

# Magazine. all
puts "\n"
pp "Magazine. all:", Magazine.all
puts "\n"


#new Article Instances
mwalimu_sam = Article.new(sam, architect, "Mwalimu Sam")
kevins_conner = Article.new(kevin, architect, "Kevin Conner")

allan_favs = Article.new(allan, forbes, "Upcoming musicians")
phil_riches = Article.new(phil, forbes, "Rich quickk")
mooney_sam = Article.new(sam, forbes, "Chase a bag")
broke_sam = Article.new(sam, forbes, "Broke Boys")
sam_pays = Article.new(sam, forbes, "Get rich quickk")

puts "Article#title mwalimu_sam:", mwalimu_sam.title
puts "\n"
pp "Article. all:", Article.all
puts "\n"

# Article#author
pp "Article#author mwalimu_sam:", mwalimu_sam.author
puts "\n"
# Article#magazine
pp "Article#magazine mwalimu_sam:", mwalimu_sam.magazine
puts "\n"

# Author#articles
pp "Author#articles sam:", sam.articles
puts "\n"

# Author#magazines
pp "Author#magazines sam:", sam.magazines
puts "\n"

# Magazine#contributors
pp "Magazine#contributors forbes:", forbes.contributors
puts "\n"

# Author#add_article(magazine, title)
sam.add_article(forbes, "The bold and the rich")

# Author#topic_areas
pp "Author#topic_areas sam:", sam.topic_areas
puts "\n"
# Magazine.find_by_name(name)
pp "Magazine.find_by_name(name):", Magazine.find_by_name("Forbes Magazine")
puts "\n"

#Magazine#article_titles
pp "Magazine#article_titles architect: ", architect.article_titles
puts "\n"

#Magazine#contributing_authors
pp "Magazine#contributing_authors forbes:", forbes.contributing_authors

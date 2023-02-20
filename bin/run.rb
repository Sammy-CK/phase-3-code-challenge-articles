#!/usr/bin/env ruby

require_relative "../config/environment"

sam = Author.new("Sammy Cherono")
kevin = Author.new("Kevin Korir")

allan = Author.new("Allan Aberi")
phil = Author.new("Philip Mutisya")

# puts sam.name, kevin.name,allan.name, phil.name

forbes = Magazine.new("Forbes Magazine", "Wealth")
architect = Magazine.new("Architect Digets", "Property")

# puts forbes.name, forbes.category
# forbes.name = "Forb Mag"
# forbes.category = "Money"
# puts forbes.name, forbes.category

# pp Magazine.all

mwalimu_sam = Article.new(sam, architect, "Mwalimu Sam")
kevins_conner = Article.new(kevin, architect, "Kevin Conner")

allan_favs = Article.new(allan, forbes, "Upcoming musicians")
phil_riches = Article.new(phil, forbes, "Rich quickk")
mooney_sam = Article.new(sam, forbes, "Chase a bag")
broke_sam = Article.new(sam, forbes, "Broke Boys")
sam_pays = Article.new(sam, forbes, "Get rich quickk")

# pp mwalimu_sam.author, mwalimu_sam.magazine

# puts mwalimu_sam.title
# pp Article.all

# pp mwalimu_sam.author

# pp  mwalimu_sam.magazine

# pp sam.articles

# pp sam.magazines

# pp forbes.contributors
# pp architect.contributors

# sam.add_article(forbes, "The bold and the rich")
# pp forbes.article_titles

# # pp sam.topic_areas

# pp Magazine.find_by_name("Forbes Magazine")

# pp architect.article_titles

# pp forbes.contributing_authors

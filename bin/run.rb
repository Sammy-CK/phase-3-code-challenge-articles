#!/usr/bin/env ruby

require_relative "../config/environment"

##Author
sam = Author.new("Sammy Cherono")
kevin = Author.new("Kevin Korir")

allan = Author.new("Allan Aberi")
phil = Author.new("Philip Mutisya")

pp sam.articles

# puts sam.name, kevin.name,allan.name, phil.name
##end

##Magazine
forbes = Magazine.new("Forbes Magazine", "Wealth")
architect = Magazine.new("Architect Digets", "Property")

# puts forbes.name, forbes.category
# forbes.name = "Forb Mag"
# forbes.category = "Money"
# puts forbes.name, forbes.category

# pp Magazine.all

##end

##Article
mwalimu_sam = Article.new(sam, architect, "Mwalimu Sam")
kevins_conner = Article.new(kevin, architect, "Kevin Conner")

allan_favs = Article.new(allan, forbes, "Upcoming musicians")
phil_riches = Article.new(phil, forbes, "Rich quickk")
mooney_sam = Article.new(sam, forbes, "Chase a bag")
broke_sam = Article.new(sam, forbes, "Broke Boys")

pp mwalimu_sam.author, mwalimu_sam.magazine

# puts mwalimu_sam.title
# pp Article.all
##end

pp sam.articles

pp sam.magazines

pp forbes.contributors
pp architect.contributors

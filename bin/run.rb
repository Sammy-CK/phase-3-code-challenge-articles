#!/usr/bin/env ruby

require_relative "../config/environment"

##Author
sam = Author.new("Sammy Cherono")
puts sam.name
##end

##Magazine
forbes = Magazine.new("Forbes Magazine", "Wealth")
architect = Magazine.new("Architect Digets", "Property")
puts forbes.name, forbes.category

forbes.name = "Forb Mag"
forbes.category = "Money"
puts forbes.name, forbes.category

pp Magazine.all

##end

##Article
mwalimu_tom = Article.new("x", "y", "Tom")
children_conner = Article.new("z", "y", "Children")

puts mwalimu_tom.title
pp Article.all
##end

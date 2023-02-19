class Article
  @@all = []

  #intitialize new article instance
  def initialize(author, magazine, title)
    @author = author
    @magazine = magazine
    @title = title
    @@all << self
  end

  #name: Returns the title of this article instance
  def title
    @title
  end

  # .all: Returns an array of all article instances
  def self.all
    @@all
  end
end

# mwalimu_tom = Article.new("x", "y", "Tom")
# children_conner = Article.new("z", "y", "Children")

# puts mwalimu_tom.title
# pp Article.all

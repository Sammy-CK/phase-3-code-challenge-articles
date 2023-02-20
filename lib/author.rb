class Author

  #intitialize new author instance
  def initialize(name)
    @name = name
  end

  #name: Returns the name of the author instance
  def name
    @name
  end

  #articles: Returns array of articles of this author instance
  def articles
    written_articles = []
    Article.all.each do |article|
      if article.author.name == self.name
        written_articles << article
      end
    end

    written_articles
  end

  #magazines: Returns array of magazines of this author instance
  def magazines
    featured_magazine = []
    Article.all.each do |article|
      if article.author.name == self.name
        featured_magazine << article.magazine
      end
    end

    featured_magazine.uniq
  end

  #add_article: creates new Article instance and associates it with that author and that magazine.
  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end

  #topic_areas: Returns a unique array of strings with the categories of the magazines the author has contributed to
  def topic_areas
    categories_featured = []
    (self.magazines).each do |magazine_contributed|
      categories_featured << magazine_contributed.category
    end
    categories_featured.uniq
  end
end

# sam = Author.new("Sammy Cherono")
# puts sam.name

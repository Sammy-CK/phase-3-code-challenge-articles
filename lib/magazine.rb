class Magazine
  attr_writer :name, :category
  @@all = []
  #initializes a new Magazine instance
  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  #name: Returns the name of this magazine instance
  def name
    @name
  end

  #category: Returns the category of this magazine instance
  def category
    @category
  end

  # .all: Returns an array of all Magazine instances
  def self.all
    @@all
  end

  #contributors: Returns an array of Author instances who have written for this magazine
  def contributors
    contributors = []
    Article.all.each do |article|
      if article.magazine.name == self.name
        contributors << article.author
      end
    end

    contributors.uniq
  end

  def self.find_by_name(name)
    found_magazine = @@all.find do |mag|
      mag.name == name
    end
    found_magazine
  end

  def article_titles
    featured_articles = []
    Article.all.each do |article|
      if article.magazine.name == self.name
        featured_articles << article.title
      end
    end

    featured_articles
  end

  def contributing_authors
   featured_articles =  Article.all.filter do |article|
    # pp article
      article.magazine.name == self.name
    end
# pp featured_articles
    authors = []

    featured_articles.each do |article_feat|
      authors << article_feat.author
    end
    # pp authors

    def find_duplicates(array)
      duplicates = []
      array.each do |element|
        duplicates << element if array.count(element) > 2
      end
      duplicates.uniq
    end    
    # pp authors
    find_duplicates(authors)

  end



end

# forbes = Magazine.new("Forbes Magazine", "Wealth")
# architect = Magazine.new("Architect Digets", "Property")
# puts forbes.name, forbes.category

# forbes.name = "Forb Mag"
# forbes.category = "Money"
# puts forbes.name, forbes.category

# pp Magazine.all

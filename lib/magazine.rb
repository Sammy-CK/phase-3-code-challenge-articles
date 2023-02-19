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
end

# forbes = Magazine.new("Forbes Magazine", "Wealth")
# architect = Magazine.new("Architect Digets", "Property")
# puts forbes.name, forbes.category

# forbes.name = "Forb Mag"
# forbes.category = "Money"
# puts forbes.name, forbes.category

# pp Magazine.all

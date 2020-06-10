class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews
    reviews = []
    Review.all.each do |review|
      if review.movie == self 
        reviews << review.
      end
    end
    reviews
  end

  def reviewers
    reviewers = []
    Review.all.each do |review|
      if review.movie == self
        reviewers << review.viewer
      end
    end
    reviewers
  end
end

end

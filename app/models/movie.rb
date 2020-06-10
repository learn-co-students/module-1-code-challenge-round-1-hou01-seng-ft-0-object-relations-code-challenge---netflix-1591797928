class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def reviews
    my_reviews = []
    Review.all.each do |review|
      if review.movie == self
        my_reviews << review
      end
    end
    my_reviews
  end

  def reviewers
    my_reviewers = []
    Review.all.each do |review|
      if review.movie == self
        my_reviewers << review.viewer
      end
    end
    my_reviewers
  end

  def self.all
    @@all
  end

end

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
    Review.all.select do |review|
      review.movie == self
    end
  end

  def reviewers
    movie_review = []
      Review.all.each do |review|
        if review.movie == self
          movie_review << review.viewer
        end
      end
      movie_review
  end

  def average_rating
    movie_rating = []
    Review.all.each do |review|
      if review.movie == self
      movie_rating << review.rating
      end
    end
    movie_rating.sum / movie_rating.length
  end

  def self.highest_rated
    
  end

end

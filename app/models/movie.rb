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
    movie_reviews = []
    Review.all.each do |review|
      if review.movie == self
        movie_reviews << review
      end
    end
    movie_reviews
  end

  def reviewers
    movie_reviewers = []
    Review.all.each do |review|
      if review.movie == self
        movie_reviewers << review.viewer
      end
    end
    movie_reviewers
  end

  def average_rating
    average = []
    review_ratings = []
    Review.all.each do |review|
      if review.movie == self
        review_ratings << review.rating
        average = review_ratings.sum / review_ratings.length
      end
    end
   average
  end

  #need to find movie associated with highest average rating
  def Movie.highest_rated
   Review.all.each do |review|
  end

end

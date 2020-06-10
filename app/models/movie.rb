class Movie
  attr_accessor :title

  @@all = []

  attr_accessor :title

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
    all_reviewers = []
    Review.all.each do |review|
      if review.movie == self
        all_reviewers << review.viewer
      end
    end
    all_reviewers
  end

  def average_rating
    rating_count = 0
    average_rating = 0
    Review.all.each do |review|
      if review.movie == self
        rating_count += review.rating
      end
    end
    average_rating = rating_count / self.reviews.count 
    average_rating
  end

  def self.highest_rated
    highest = []
    rating = 0
    self.all.each do |movie|
      if movie.average_rating > rating
        highest = movie
        rating = movie.average_rating
      end
    end
    highest
  end

end

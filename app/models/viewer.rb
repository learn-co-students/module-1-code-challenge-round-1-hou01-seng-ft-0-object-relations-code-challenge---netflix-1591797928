require 'pry'

class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def reviews
    reviews = []
    Review.all.each do | review |
      if review.viewer == self
        reviews << review
      end
    end
    reviews
  end

  def reviewed_movies
    reviewed_movies = []
    Review.all.each do | review |
      if review.viewer == self
        reviewed_movies << review.movie
      end
    end
    reviewed_movies
  end

  def reviewed_movie?(movie)
    if self.reviewed_movies.include?(movie)
      return true
    end
    false
  end

  def rate_movie(movie, rating)
    if self.reviewed_movie?(movie)
      update_movie = self.reviews.find{| item | item.movie == movie}
      update_movie.rating = rating
    end
    new_movie_review = Review.new(self, movie, rating)
  end

  def self.all
    @@all
  end
  
end

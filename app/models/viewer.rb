class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews
    
    reviews_associated_with_viewer = []

    Review.all.each do |review|
      if review.viewer == self
        reviews_associated_with_viewer << review
      end
    end
    reviews_associated_with_viewer
  end

  def reviewed_movies
    movies_reviewed_by_user = []

    Review.all.each do |review|
      if review.viewer ==  self
        movies_reviewed_by_user << review.movie
      end
    end
    movies_reviewed_by_user
  end

  def reviewed_movies?(movie)
    
    Review.all.each do |review|
      if review.viewer == self && review.movie == movie
        return true
      else    
        return false
      end
    end
  end

  def rate_movie(movie, rating)
    
    Review.all.each do |review|
      if review.viewer == self && review.movie == movie
        review.rating == rating
      else
        Review.new(self, movie, rating)

      end
    end
  end
end

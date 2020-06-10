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

  def username
    @username
  end

  def reviews 
    my_reviews = []
    Review.all.each do |review|
      if(review.viewer == self)
        my_reviews << review
      end
    end
    my_reviews
  end

  def reviewed_movies
    my_reviewed_movies = []
    Review.all.each do |review|
      if(review.viewer == self)
        my_reviewed_movies << review.movie
      end
    end
    my_reviewed_movies
  end

  def reviewed_movie?(movie)
    self.reviewed_movies.each do |my_movie|
      if(my_movie == movie)
        return true
      else 
        return false
      end
    end
  end

  def rate_movie(movie, rating)
    self.reviews.each do |review|
      if(review.movie == movie)
        review.rating = rating
      else
        Review.new(self, movie, rating)
      end
    end
  end

end

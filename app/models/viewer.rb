class Viewer
  attr_accessor :username, :movie, :rating

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def reviews
    my_reviews = []
    Review.all.each do |review|
      if review.viewer == self
        my_reviews << review
      end
    end
    my_reviews
  end

  def reviewed_movies
    @my_movies = []
    Review.all.each do |review|
      if review.viewer == self
        my_movies << review.movie
      end
    end
    @my_movies
  end

  def reviewed_movie?(movie_object)
    Review.all.each do |review|
      if review.viewer == self
        if review.movie == movie_object
          return true
        end
      end
    end
    return false
  end

  def rate_movie(movie_object, rating_number)
    #Review.all.each do |review|
     # if review.viewer == self
      #  if review.movie == movie_object
       #   review.rating = rating_number
       # else
          Review.new(self, movie_object, rating_number)
        #end
     # end
    #end

  end

  def self.all
    @@all
  end
  
end

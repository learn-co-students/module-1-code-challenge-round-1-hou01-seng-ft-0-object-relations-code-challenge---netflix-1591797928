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
    viewer_reviews = []
    Review.all.each do |review|
      if review.viewer == self
        viewer_reviews << review
      end
    end
    viewer_reviews
  end

  def reviewed_movies
    viewer_reviewed_movies = []
   Review.all.each do |review|
    if review.viewer == self
      viewer_reviewed_movies << review.movie
    end
    end
    viewer_reviewed_movies
  end

  def reviewed_movie?(movie)
    self.reviewed_movies.include? (movie)
  end

  #case statement that makes new review if movie passed in is not included in 
  #the previous reviewed_movies? method array
  def rate_movie(movie, rating)
    # case rate_movie
    #   when self.reviewed_movie?(movie) == false
    #      new_review = Review.new(viewer, movie, rating)
    #   when self.reviewed_movie?(movie) == true
    #      self.reviewed_movie?(movie) = rating
    # end
  end
  
  
end

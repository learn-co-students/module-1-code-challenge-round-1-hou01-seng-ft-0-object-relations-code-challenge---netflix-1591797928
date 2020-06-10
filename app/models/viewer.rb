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
    Review.all.select do |review|
      review.viewer == self
    end
  end

  def reviewed_movies
    self.reviews.map do |review|
      review.movie
    end
  end

  def reviewed_movie?(movie)
    self.reviewed_movies.include?(movie)
    # if true
    #   return "This reviewer has seen #{movie.title}."
    # end
  end

  def rate_movie(movie, rating)
    if self.reviewed_movie?(movie) == true
      Review.all.each do |review|
        review.movie == movie && review.viewer == self
        review.rating=(rating)
      end
    else
      new_review = Review.new(self, movie, rating)
    end
    return new_review
  end

  
end

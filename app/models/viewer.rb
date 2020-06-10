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
    review_movies = []
      Review.all.each do |review|
        if review.viewer == self
          review_movies << review.movie
        end
      end
      review_movies
  end
  
  # def reviewed_movie?(movie) #<= avengers
  #    Review.all.each do |review| #<= review instance
  #       if review.viewer == movie.reviewers
  #         return true
  #       else
  #         return false
  #       end
  #    end
  # end

  def rate_movie(movie, rating)
    
  end
end

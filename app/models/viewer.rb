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
    reviews = []
    Review.all.each do |review|
      if review.viewer == self
        reviews << review
      end
    end
    reviews
  end

  def reviewed_movies
    reviewed_movies = []
    Review.all.each do |review|
      if review.viewer == self
        reviewed_movies << review.movie
      end
    end
    reviewed_movies
  end

  # def reviewed_movie?(movie)
  #   reviewed_movies.each do |review|
  #     if review.movie == movie
  #       return true
  #     else 
  #       return false
  #     end
  #   end
  # end
    

end

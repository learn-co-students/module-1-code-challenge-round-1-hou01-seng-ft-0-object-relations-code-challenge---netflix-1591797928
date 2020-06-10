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
        reviews.push(review)
      end
    end
    reviews
  end

  def reviewed_movies
    movie = []
    Review.all.each do |review|
      if review.viewer == self
        movie.push(review.movie)
      end
    end
    movie
  end


end

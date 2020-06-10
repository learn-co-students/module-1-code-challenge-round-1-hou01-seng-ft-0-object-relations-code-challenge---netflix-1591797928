class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select do |review|
      review.movie == self
    end
  end

  def reviewers
    self.reviews.map do |review|
      review.viewer
    end
  end

  def average_rating
    average_rates = []
    self.reviews.each do |reviews|
      average_rates << reviews.rating
    end
    average_rates.sum / average_rates.count
  end
  
  # def self.highest_rated
  #   rating = 0
  #   Review.all.each do |review|
  #     review.rating 

  # end

end

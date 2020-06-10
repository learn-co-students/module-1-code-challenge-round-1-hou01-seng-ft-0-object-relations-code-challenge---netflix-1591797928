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

  def title
    @title
  end

  def reviews
    my_reviews = []
    Review.all.each do |review|
      if(review.movie == self)
        my_reviews << review
      end
    end
    my_reviews
  end

  def reviewers
    my_reviewers = []
    Review.all.each do |review|
      if(review.movie == self)
        my_reviewers << review.viewer
      end
    end
    my_reviewers
  end

  def average_rating
    all_ratings = 0
    total_num = self.reviews.count
    self.reviews.each do |review|
      all_ratings += review.rating
    end
    average = all_ratings / total_num
    average
  end

  def self.highest_rated
    highest_rated = nil
    rate = 0
    self.all.each do |movie|
      if(movie.average_rating > rate) 
        highest_rated = movie
        rate += 1
      end
    end
    highest_rated
  end

end

class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def reviews
    reviews = []
    Review.all.each do | review |
      if review.movie == self
        reviews << review
      end
    end
    reviews
  end

  def reviewers
    reviewers = []
    self.reviews.each do | review |
      reviewers << review.viewer
    end
    reviewers
  end

  def average_rating
    all_ratings_added = 0
    self.reviews.each do | review |
      all_ratings_added += review.rating
    end
    (all_ratings_added.to_f / self.reviews.length).round(1)
  end

  def self.highest_rated
    highest_rated = nil
    count = 0
    Review.all.each do | review |
      if review.rating >= count
        highest_rated = review.movie
        count = review.rating
      end
    end
    highest_rated
  end

  def self.all
    @@all
  end

end

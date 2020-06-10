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

    reviews_for_movie = []

    Review.all.each do |review|
      if review.movie == self
        reviews_for_movie << review
      end
    end
    reviews_for_movie
  end


  def reviewers

    viewers_for_movie = []

    Review.all.each do |review|
      if review.movie == self
        viewers_for_movie << review.viewer
      end
    end
    viewers_for_movie
   end

   def average_rating
    
    movie_average_rating = 0
    movie_ratings_total = 0
    movie_count = 0
    Review.all.each do |review|
      if review.movie == self
        movie_ratings_total += review.rating
        movie_count += 1
      end
    end
    movie_average_rating = movie_ratings_total / movie_count
    movie_average_rating
   end

   def self.highest_rated

      movie_reviews = Review.all.select {|review| review.rating}
      max_val = 0
      movie_reviews.each do |review|
        if review.rating >  max_val
          max_val == review.rating
        end
   end
   return max_val
  end
  
  ## FUNCTION IS NOT CURRENTLY WORKNG
end

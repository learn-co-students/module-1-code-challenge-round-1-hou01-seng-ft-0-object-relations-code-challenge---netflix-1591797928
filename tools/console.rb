# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#movie
movie_1 = Movie.new("New Jack City")
movie_2 = Movie.new("Love Jones")
movie_3 = Movie.new("The Notebook")
Movie.all
movie_1.reviews
movie_1.reviewers
movie_1.average_rating
movie_2.average_rating
Movie.highest_rated


#viewer
niketa = Viewer.new("Niketa")
shane = Viewer.new("Shane")
blythe = Viewer.new("Blythe")
Viewer.all
niketa.reviews
shane.reviews
niketa.reviewed_movies
niketa.reviewed_movie?(movie_3)
niketa.reviewed_movie?(movie_1)
niketa.rate_movie(movie_1, 2)

#review
review_1 = Review.new(niketa, movie_2, 5)
review_2 = Review.new(niketa, movie_1, 4)
review_3 = Review.new(shane, movie_3, 2)
review_4 = Review.new(shane, movie_1, 5)
review_5 = Review.new(shane, movie_2, 1)
Review.all
review_1.viewer
review_3.movie
# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0

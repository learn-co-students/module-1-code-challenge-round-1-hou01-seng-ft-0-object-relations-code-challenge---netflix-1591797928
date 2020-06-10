# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

julio = Viewer.new("Julio")
bob = Viewer.new("Bob")

avengers = Movie.new("The Avengers")
matrix = Movie.new("The Matrix")
dolittle = Movie.new("Do Little")

avengers_review = Review.new(julio, avengers, 9)
avengers_review_2 = Review.new(bob, avengers, 8)
matrix_review = Review.new(julio, matrix, 7)
dolittle_review = Review.new(bob, dolittle, 7)

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0

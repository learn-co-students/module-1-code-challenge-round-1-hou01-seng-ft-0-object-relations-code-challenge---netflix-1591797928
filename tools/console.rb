# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

avengers =  Movie.new("Avengers")
spiderman = Movie.new("Spiderman")
mark = Viewer.new("Mark")
manny = Viewer.new("Manny")
avengers_review_1 = Review.new(mark, avengers, 9)
avengers_review_2 = Review.new(manny, avengers, 7)
spiderman = Review.new(manny, spiderman, 7)
#mark.rate_movie(spiderman, 7)



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0

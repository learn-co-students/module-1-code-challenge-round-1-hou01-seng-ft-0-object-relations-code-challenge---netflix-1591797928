# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#Movie
movie_1 = Movie.new("Nemo")
movie_2 = Movie.new("Tarzan")
movie_3 = Movie.new("Shrek")

#Viewer 
viewer_1 = Viewer.new("Rey")
viewer_2 = Viewer.new("Nat")
viewer_3 = Viewer.new("Kobe")

#Review

review_1 = Review.new(viewer_1, movie_1, 8)
review_2 = Review.new(viewer_2, movie_2, 10)
review_3 = Review.new(viewer_3, movie_1, 5)
review_4 = Review.new(viewer_1, movie_2, 10)
review_5 = Review.new(viewer_2, movie_2, 8)
review_6 = Review.new(viewer_3, movie_2, 10)
# review_7 = Review.new(viewer_1, movie_3, 3)
review_8 = Review.new(viewer_2, movie_3, 4)
review_9 = Review.new(viewer_3, movie_3, 2)

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0

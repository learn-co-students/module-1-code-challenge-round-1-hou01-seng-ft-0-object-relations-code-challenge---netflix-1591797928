# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

guardians = Movie.new("Guardians of the Galaxy")

guardians_two = Movie.new("Guardians of the Galaxy Vol. 2")

end_game = Movie.new("Avengers: End Game")

james = Viewer.new("James")

josh = Viewer.new("Josh")

steven = Viewer.new("Steven")

galaxy_review = Review.new(james, guardians, 5)

galaxy_two_review = Review.new(james, guardians_two, 5)

james_eg_review = Review.new(james, end_game, 4)

stevens_eg_review = Review.new(steven, end_game, 2)

joshs_eg_review = Review.new(josh, end_game, 5)

stevens_guardians_review = Review.new(steven, guardians, 5)

stevens_guardians_two_review = Review.new(steven, guardians_two, 4)

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0

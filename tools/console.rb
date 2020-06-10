# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

parasite = Movie.new("Parasite")
avengers = Movie.new("Avengers")
toy_story = Movie.new("Toy Story")
frank_1 = Viewer.new("Frank_1")
josh_1 = Viewer.new("Josh_1")
steven_1 = Viewer.new("Steven_1")
review1 = Review.new(frank_1, parasite, 5)
review2 = Review.new(josh_1, avengers, 3)
review3 = Review.new(steven_1, toy_story, 2)
review4 = Review.new(frank_1, avengers, 1)
review5 = Review.new(josh_1, toy_story, 5)
review6 = Review.new(frank_1, toy_story, 2)





# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0

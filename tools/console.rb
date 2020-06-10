require 'require_all'
require_all('app')
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

joe = Viewer.new("joe")
josh = Viewer.new("josh")

father = Movie.new("god father")
forrest = Movie.new("forrest gump")


father_review = Review.new(joe, father, 100)
forrest_review = Review.new(josh, forrest, 80)
forrest_review = Review.new(joe, forrest, 90)

p joe.reviews
p josh.reviews
p joe.reviewed_movies
p forrest.reviews

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0

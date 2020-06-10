# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
billyjean = Movie.new("BillyJean")
p billyjean

leonie = Viewer.new("Leonie")
p leonie


leosauld = Review.new(leonie,billyjean,5)
leosauld

Review

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
# binding.pry
0

# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
kill_bill = Movie.new("Kill Bill")
space_jam = Movie.new("Space Jam")
jimmy = Viewer.new("Jimmy")
timmy = Viewer.new("Timmy")
good_review = Review.new(jimmy, space_jam, 10)
scathing_review = Review.new(timmy, kill_bill, 2)




# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0

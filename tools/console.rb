# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end


## Movie instances ##

batman = Movie.new("batman")
spiderman = Movie.new("spiderman")
joker = Movie.new("joker")
ironman = Movie.new("ironman")


## Viewer instances ##

michael = Viewer.new("michael")
david = Viewer.new("david")
peter = Viewer.new("peter")
mark = Viewer.new("mark")


## Review instances ##


review1 = Review.new(michael, batman, 9)
review2 = Review.new(david, spiderman, 4)
review3 = Review.new(peter, joker, 7)
review4 = Review.new(mark, ironman, 1)
review5 = Review.new(michael, batman, 1)




# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0

# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

avengers = Movie.new('The Avengers')
xmen = Movie.new('X-men')
dbz = Movie.new('Dragon Ball Z')

trey = Viewer.new('trey123')
max = Viewer.new('max456')
alex = Viewer.new('alex93')

review_1 = Review.new(trey, avengers, 8)
review_2 = Review.new(trey, dbz, 7)
review_3 = Review.new(trey, xmen, 10)
review_4 = Review.new(max, avengers, 7)
review_5 = Review.new(max, dbz, 9)
review_6 = Review.new(max, xmen, 2)
review_7 = Review.new(alex, avengers, 6)
review_8 = Review.new(alex, dbz, 8)
review_9 = Review.new(alex, xmen, 9)

# Review#viewer = review_1.viewer => #<Viewer:0x00007ffbe112b4b8 @username="trey123">
# Review#movie = review_2.movie => #<Movie:0x00007ffbe112b508 @title="Dragon Ball Z">
# Viewer#reviews = max.reviews => [#<Review:0x00007fc7b417b528
  @movie=#<Movie:0x00007fc7b417b668 @title="Dragon Ball Z">,
  @rating=9,
  @viewer=#<Viewer:0x00007fc7b417b5c8 @username="max123">>]
  
# Viewer#reviewed_movies = trey.reviewed_movies 
# Movie#reviewers = avengers.reviewers



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0

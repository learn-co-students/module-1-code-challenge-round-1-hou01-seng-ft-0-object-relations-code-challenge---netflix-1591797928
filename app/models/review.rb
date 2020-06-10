class Review
    attr_reader :rating ,:viewer ,:movie
    @@all = []

def initialize(viewer,movie,rating)
   @viewer = viewer
   @movie = movie
   @rating = rating
    @@all << self
end






def Review.all
    @all
end

end
class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
    #self.class.all << self
  end

  def reviews
    
      review_all = []
  
      Review.all.each do |reviews|
        if reviews.movie == self
          review_all << reviews 
            end
        end
      review_all 
    end 
  

  # def reviewers
  # #   all_viewers = []
  # Viewer.all.each do |views|
  #   if views


  def self.all
    @@all
  end
 
end

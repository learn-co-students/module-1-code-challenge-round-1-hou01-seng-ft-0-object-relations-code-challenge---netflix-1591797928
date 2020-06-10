class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews
    my_reviews = []
    Review.all.each do |review|
      if review.viewer == self
        my_reviews << review
      end
    end
    my_reviews
  end

end

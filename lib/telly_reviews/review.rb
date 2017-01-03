class TellyReviews::Review 
  attr_accessor :title, :author, :date, :body, :author_twitter, :url

  @@all = []

  def initialize(hash={})
    hash.each do |k,v|
      self.send("#{k}=", v)
    end
    @@all << self
  end

  def self.all
    @@all    
  end

  def self.find(index)
    self.all[index-1]
  end

  def self.review_count
    @@all.count
  end

  def body_length
    @body.length
  end

end


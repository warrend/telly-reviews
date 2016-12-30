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

  def review_details
    doc = Nokogiri::HTML(open(self.url))
    
  end

end
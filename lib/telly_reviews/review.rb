class TellyReviews::Review 
  attr_accessor :title, :author, :date, :body, :author_twitter, :url, :tag

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

    @date = doc.css(".article-body .abstract .timestamp").text
    @body = doc.css(".article-body .variety-content-wrapper")
    @author_twitter = doc.css(".byline .author .url a").text
    @tag = doc.css(".abstract h2").text
    @author = doc.css(".byline .author").text
  end

  def self.find(index)
    self.all[index-1]
  end

end
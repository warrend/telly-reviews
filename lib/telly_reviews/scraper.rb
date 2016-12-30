class TellyReviews::Scraper 
  
  def self.make_list
    Nokogiri::HTML(open("http://variety.com/v/tv/reviews/")).css(".module-blogroll-section-front .story").each do |review|
      TellyReviews::Review.new({
        title: review.css("h2 a").text.strip,
        author: review.css(".author").text.strip
        #url: review.css("h2 a").attr('href').value
      })
    end
  end
end

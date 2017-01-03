class TellyReviews::Scraper 
  
  def self.make_list
    Nokogiri::HTML(open("http://variety.com/v/tv/reviews/")).css(".module-blogroll-section-front .story").each do |review|
      TellyReviews::Review.new({
        title: review.css("h2").text.strip,
        author: review.css(".author a").text.strip,
        url: review.css("a").attr('href').value
      })
    end
  end

  def self.scrape_details(review)
    doc = Nokogiri::HTML(open(review.url))

    review.date = doc.css(".article-body .abstract .timestamp").text
    review.author_twitter = doc.css(".byline .author .url a").text
    review.body = doc.css(".article-body .variety-content-wrapper").text.strip
  end
end

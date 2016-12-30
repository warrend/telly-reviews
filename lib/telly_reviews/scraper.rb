class TellyReviews::Scraper 
  
  def self.make_list
    Nokogiri::HTML(open("http://variety.com/v/tv/reviews/")).css("story").each do |review|
      TellyReviews::Review.new({
        title: review.css("h2 a").text,
        author: review.css(".author").text,
        url: review.css("h2 a").attr("href").value
      })
    end
  end
end
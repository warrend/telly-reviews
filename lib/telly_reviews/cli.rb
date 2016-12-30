class TellyReviews::CLI

  def call
    puts "Welcome to Telly Reviews"
    TellyReviews::Scraper.make_list
    start
  end

  def start 
    
  end

  def print_list
    TellyReviews::Reviews.all.each.with_index(1) do |review, index|
      puts "#{index}. #{review.body} by #{review.author}"
    end
  end
end
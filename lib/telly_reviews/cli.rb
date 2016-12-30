class TellyReviews::CLI

  def call
    puts "Welcome to Telly Reviews"
    TellyReviews::Scraper.make_list
    start
  end

  def start 
    print_list
    puts "Enter number to see article:"
    input = gets.strip

    review = TellyReviews::Review.find(input.to_i)
    print_review(review)
    puts ""
    puts "Would you like to read another review? (y/n)"
    input = gets.strip.downcase
    if input == 'y'
      puts ""
      start
    else
      puts "Please come back soon for the updated reviews!"
      exit
    end
  end

  def print_list
    TellyReviews::Review.all.each.with_index(1) do |review, index|
      puts "#{index}. #{review.title} by #{review.author}"
    end
  end

  def print_review(review)
    review.review_details
    print_details(review)
  end

  def print_details(review)
    puts "#{review.title}"
    puts ""
    puts "By #{review.author}"
    puts "#{review.date}"
    puts "Twitter: #{review.author_twitter}"
    puts ""
    puts "#{review.body}"
    puts ""
  end
end
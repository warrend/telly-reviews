class TellyReviews::CLI

  def call
    welcome
    TellyReviews::Scraper.make_list
    start
  end

  def welcome
    puts ""
    puts "Welcome to Telly Reviews"
    puts "---------------------------------"
  end

  def start 
    puts ""
    print_list
    puts "---------------------------------"
    puts ""
    puts "Enter number to see article:"
    input = gets.strip

    review = TellyReviews::Review.find(input.to_i)

    print_review(review)
    puts ""
    puts "Type 'open' to open this article in your web browser."
    puts "Would you like to read another review? (y/n)"
    input = gets.strip.downcase
    if input == 'y'
      puts ""
      start
    elsif input == 'open'
      system("open", "#{review.url}")
      start
    else
      puts "Please come back soon for more updated reviews!"
      exit
    end
  end

  def print_list
    TellyReviews::Review.all.each.with_index(1) do |review, index|
      puts "#{index}. #{review.title} by #{review.author}"
    end
  end

  def print_review(review)
    TellyReviews::Scraper.scrape_details(review)
    binding.pry
    print_details(review)
  end

  def print_details(review)
    puts "---------------------------------"
    puts "#{review.title}"
    puts ""
    puts "By #{review.author}"
    puts "#{review.date}"
    puts "Twitter: #{review.author_twitter}"
    puts "---------------------------------"
    puts ""
    puts "#{review.body}"
    puts "---------------------------------"
  end
end
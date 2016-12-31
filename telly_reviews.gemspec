require_relative './lib/telly_reviews/version'

Gem::Specification.new do |spec|
  spec.name          = "telly_reviews"
  spec.version       = TellyReviews::VERSION
  spec.authors       = ["Daniel Warren"]
  spec.email         = ["warrend555@gmail.com"]
  spec.files         = ["lib/telly_reviews.rb", "lib/telly_reviews/cli.rb", "lib/telly_reviews/scraper.rb", "lib/telly_reviews/review.rb", "config/environment.rb"]
  spec.summary       = %q{Telly Reviews is a CLI gem that scrapes the latest TV show reviews from Variety.com.}
  spec.homepage      = "https://github.com/warrend/telly-reviews"
  spec.license       = "MIT"
  spec.executables   << "telly_reviews"

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "nokogiri", ">=0"
  spec.add_development_dependency "pry", ">=0"
  spec.add_development_dependency "require_all", ">=0"
end
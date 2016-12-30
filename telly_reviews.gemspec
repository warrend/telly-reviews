require './lib/telly_reviews/version'

Gem::Specification.new do |spec|
  spec.name          = "telly_reviews"
  spec.version       = TellyReviews::VERSION
  spec.authors       = ["warrend"]
  spec.email         = ["warrend555@gmail.com"]

  spec.summary       = %q{CLI gem for Variety's TV show reviews}
  #spec.description   = %q{TODO: Write a longer description or delete this line.}
  spec.homepage      = "https://github.com/warrend/telly-reviews"
  spec.license       = "MIT"
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "nokogiri", ">=0"
  spec.add_development_dependency "pry", ">=0"
  spec.add_development_dependency "require_all", ">=0"
end

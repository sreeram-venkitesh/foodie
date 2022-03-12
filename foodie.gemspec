# frozen_string_literal: true

require_relative "lib/foodie/version"

Gem::Specification.new do |spec|
  spec.name          = "foodie_sreeram"
  spec.version       = Foodie::VERSION
  spec.authors       = ["Sreeram Venkitesh"]
  spec.email         = ["sreeram.venkitesh@bigbinary.com"]

  spec.summary       = "My version of the foodie gem tutorial"
  spec.description   = "foodie is a gem that can be used to classify foods into different categories as per your liking"
  spec.homepage      = "https://github.com/sreeram-venkitesh/foodie"
  spec.required_ruby_version = ">= 2.4.0"

  # spec.metadata["allowed_push_host"] = "TODO: Set to 'https://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/sreeram-venkitesh/foodie"
  spec.metadata["changelog_uri"] = "https://github.com/sreeram-venkitesh/foodie"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.add_development_dependency "rspec", "~> 3.2"
  spec.add_development_dependency "cucumber"
  spec.add_development_dependency "aruba"
  spec.add_dependency "activesupport"
  spec.add_dependency "thor"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end

$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "true_units/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "true_units"
  s.version     = TrueUnits::VERSION
  s.authors     = ["Alexander Dedusenko"]
  s.email       = ["lex@logicitstaff.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of TrueUnits."
  s.description = "TODO: Description of TrueUnits."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.1.0"

  s.add_development_dependency "sqlite3"
end

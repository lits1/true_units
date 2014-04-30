$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "true_units/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "true_units"
  s.version     = TrueUnits::VERSION
  s.authors     = ["Alexander Dedusenko"]
  s.email       = ["lex@logicitstaff.com"]
  s.homepage    = "https://github.com/lits1/true_units"
  s.summary     = "The TrueUnits gem provides a simple way to display correct suffix for a noun depending on the number."
  s.description = ""
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails"
  s.add_dependency "i18n"

end

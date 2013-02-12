$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "logstore/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "logstore"
  s.version     = Logstore::VERSION
  s.authors     = ["Your name"]
  s.email       = ["Your email"]
  s.homepage    = "http://github.com/bmaland/logstore"
  s.summary     = "Summary of Logstore."
  s.description = "Description of Logstore."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.11"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end

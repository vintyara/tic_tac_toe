$:.push File.expand_path("../lib", __FILE__)

require "tic_tac_toe/version"

Gem::Specification.new do |s|
  s.name        = "tic_tac_toe"
  s.version     = TicTacToe::VERSION
  s.authors     = ["Vitaly Omelchenko"]
  s.email       = ["prosto.vint@gmail.com"]
  s.homepage    = "https://github.com/vintyara/tic_tac_toe"
  s.summary     = "Tic Tac Toe game."
  s.description = "Tic Tac Toe simple game."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", '~> 4.0', ">= 4.0.0"

  s.add_development_dependency 'pry', "~> 0"
end

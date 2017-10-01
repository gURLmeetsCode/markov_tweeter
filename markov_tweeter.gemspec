# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "markov_tweeter/version"

Gem::Specification.new do |spec|
  spec.name          = "markov_tweeter"
  spec.version       = MarkovTweeter::VERSION
  spec.authors       = ["Natasha Kelly"]
  spec.email         = ["kellynatashav@yahoo.com"]

  spec.summary       = "Application that generates tweets from Markov Chain logic"
  spec.description   = "Application that generates tweets from Markov Chain logic"
  spec.homepage      = "https://github.com/gURLmeetsCode/markov_tweeter.git"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.executables   = ["markov_tweeter"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end

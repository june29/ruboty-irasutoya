lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'ruboty/irasutoya/version'

Gem::Specification.new do |spec|
  spec.name          = "ruboty-irasutoya"
  spec.version       = Ruboty::Irasutoya::VERSION
  spec.authors       = ["Jun OHWADA"]
  spec.email         = ["june29.jp@gmail.com"]

  spec.summary       = %q{A Ruboty plugin for Irasutoya}
  spec.homepage      = "https://github.com/june29/ruboty-irasutoya"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.add_dependency "ruboty"
  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
end

# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'qp/version'

Gem::Specification.new do |spec|
  spec.name          = "qp"
  spec.version       = Qp::VERSION
  spec.authors       = ["Geoff Hayes"]
  spec.email         = ["hayesgm@gmail.com"]
  spec.description   = %q{Qp is a simple tool for inline debugging}
  spec.summary       = %q{Run `qp my_object` to get `/User/you/code/my_file.rb: "qp my_object" -> "object value"`. More features including simple benchmarking.}
  spec.homepage      = "https://github.com/hayesgm/qp"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end

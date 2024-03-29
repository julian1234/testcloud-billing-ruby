# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'testcloud/billing/ruby/version'

Gem::Specification.new do |spec|
  spec.name          = "testcloud-billing-ruby"
  spec.version       = Testcloud::Billing::Ruby::VERSION
  spec.authors       = ["Jan Schwenzien"]
  spec.email         = ["jan.schwenzien@testcloud.io"]
  spec.summary       = %q{Ruby client for the testCloud billing app.}
  spec.description   = %q{Ruby client for the testCloud billing app built on Her.}
  spec.homepage      = "https://github.com/testCloud/testcloud-billing-ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rspec-nc"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "webmock"

  spec.add_runtime_dependency "her", "~> 0.7"
end

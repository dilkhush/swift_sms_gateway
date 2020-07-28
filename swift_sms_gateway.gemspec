# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "swift_sms_gateway"
  spec.version       = "0.0.1"
  spec.authors       = ["Dilkhush Soni"]
  spec.email         = ["dilkhushsoni2010@gmail.com"]

  spec.summary       = %q{A simple wrapper around Swift Sms Gateway API}
  spec.homepage      = "https://github.com/dilkhush/swift_sms_gateway"
  spec.license       = "MIT"

  spec.files         = ["lib/swift_sms_gateway.rb", "lib/swift_sms_gateway/message.rb", "lib/swift_sms_gateway/version.rb", "lib/swift_sms_gateway/errors.rb"]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.required_ruby_version = '>= 2.2.6'

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_runtime_dependency "http", "~> 2.2.2"

end

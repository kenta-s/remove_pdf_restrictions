# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'remove_pdf_restrictions/version'

Gem::Specification.new do |spec|
  spec.name          = "remove_pdf_restrictions"
  spec.version       = RemovePdfRestrictions::VERSION
  spec.authors       = ["Kenta-s"]
  spec.email         = ["knt01222@gmail.com"]

  spec.summary       = %q{Remove PDF restrictions without password.}
  spec.description   = %q{Remove PDF restrictions without password.}
  spec.homepage      = "https://github.com/kenta-s/remove_pdf_restrictions"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end

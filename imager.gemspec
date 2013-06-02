# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'imager/version'

Gem::Specification.new do |spec|
  spec.name          = "imager"
  spec.version       = Imager::VERSION
  spec.authors       = ["Guilherme Otranto"]
  spec.email         = ["guilherme_otran@hotmail.com"]
  spec.description   = %q{A remote storange and resizer client for images.}
  spec.summary       = %q{Imager Client API}
  spec.homepage      = "https://github.com/guilherme-otran/Imager"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_dependency "httmultiparty", "~> 0.3.10"
end

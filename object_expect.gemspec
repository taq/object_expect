# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'object_expect/version'

Gem::Specification.new do |spec|
  spec.name        = 'object_expect'
  spec.version     = ObjectExpect::VERSION
  spec.authors     = ['Eustaquio Rangel']
  spec.email       = ['taq@eustaquiorangel.com']
  spec.summary     = 'Check if an object is not null, and raise an exception if it is'
  spec.description = 'Check if an object is not null, and raise an exception if it is'
  spec.homepage    = 'https://github.com/taq/object_expect'

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.bindir                = 'exe'
  spec.executables           = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths         = ['lib']
  spec.required_ruby_version = '~> 2.5'
  spec.signing_key           = '/home/taq/.gemcert/gem-private_key.pem'
  spec.cert_chain            = ['gem-public_cert.pem']

  spec.add_development_dependency 'bundler',  '~> 1.17'
  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency 'rake',     '~> 10.0'
end

# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano/redis/version'

Gem::Specification.new do |spec|
  spec.name          = "capistrano-redis"
  spec.version       = Capistrano::Redis::VERSION
  spec.authors       = ["Jan Kmet"]
  spec.email         = ["jan.kmet@gmail.com"]
  spec.description   = %q{Capistrano plugin for accessing remote Redis server}
  spec.summary       = %q{Capistrano plugin for accessing remote Redis server}
  spec.homepage      = "https://github.com/jankmet/capistrano-redis"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'capistrano', '>= 3.0.0', '< 4.0.0'
  spec.add_dependency 'redis', '~> 3.2.0'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
end

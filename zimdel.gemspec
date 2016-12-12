# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'zimdel/version'

Gem::Specification.new do |spec|
  spec.name          = 'zimdel'
  spec.version       = Zimdel::VERSION
  spec.authors       = ["Dávid Halász"]
  spec.email         = ['skateman@skateman.eu']

  spec.summary       = 'A GitHub auto-reply bot for mentioning'
  spec.description   = 'A GitHub auto-reply bot for mentioning'
  spec.homepage      = "https://github.com/skateman/zimdel"
  spec.license       = 'MIT'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'bin'
  spec.executables   = 'zimdel'
  spec.require_paths = ['lib']

  spec.add_dependency 'octokit', '~> 4.6.2'

  spec.add_development_dependency 'bundler', '~> 1.13'
  spec.add_development_dependency 'rake', '~> 10.0'
end

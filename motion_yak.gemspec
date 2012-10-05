# -*- encoding: utf-8 -*-
require File.expand_path('../lib/motion_yak/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Scott Ballantyne"]
  gem.email         = ["ussballantyne@gmail.com"]
  gem.description   = "RubyMotion wrappers for EmailYak"
  gem.summary       = "RubyMotion wrappers for EmailYak"
  gem.homepage      = "http://github.com/ballantyne/motion_yak"

  gem.files         = `git ls-files`.split($\)
  gem.test_files    = gem.files.grep(%r{^(test|spec|lib_spec|features)/})
  gem.name          = "motion_yak"
  gem.require_paths = ["lib"]
  gem.version       = MotionYak::VERSION

  gem.extra_rdoc_files = gem.files.grep(%r{motion})
  gem.add_dependency 'bubble-wrap'
end
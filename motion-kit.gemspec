# -*- encoding: utf-8 -*-
require File.expand_path('../lib/all/motion_kit_version.rb', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = 'motion-kit'
  gem.version       = MotionKit::Version
  gem.licenses      = ['BSD']

  gem.authors = ['Colin T.A. Gray', 'Jamon Holmgren']
  gem.email   = ['colinta@gmail.com', 'jamon@clearsightstudio.com']
  gem.summary     = %{The RubyMotion layout and styling gem.}
  gem.description = <<-DESC
MotionKit, for RubyMotion, is a View-Model framework that handles view creation,
view layout, user events, and binding.
DESC

  gem.homepage    = 'https://github.com/rubymotion/motion-kit'

  gem.files       = Dir.glob('lib/**/*.rb')
  gem.files      << 'README.md'
  gem.test_files  = Dir.glob('spec/**/*.rb')

  gem.require_paths = ['lib']

  gem.add_dependency 'dbt', '~> 1.1.5'
  gem.add_development_dependency 'rake'
end

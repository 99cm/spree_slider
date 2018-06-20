# encoding: UTF-8
Gem::Specification.new do |s|
  s.name        = 'spree_slider'
  s.version     = '3.6.0'
  s.authors     = ['Giuseppe Privitera', 'Leo Wang']
  s.email       = 'cgcmall.cn@gmail.com'
  s.homepage    = 'https://github.com/99cm/spree_slider'
  s.summary     = 'Spree Slider extension'
  s.description = 'Adds a slider to the homepage'
  s.required_ruby_version = '>= 2.3.0'

  s.files         = `git ls-files`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  spree_version = '>= 3.1.0', '< 4.0'
  s.add_dependency 'spree_core', spree_version
  s.add_dependency 'spree_backend', spree_version
  s.add_dependency 'jbuilder'
  s.add_dependency 'kaminari'

  s.add_development_dependency 'appraisal'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_bot'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'guard-rspec'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'shoulda-matchers'
end

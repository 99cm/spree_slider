# encoding: UTF-8
Gem::Specification.new do |s|
  s.name        = 'spree_slider'
  s.version     = '3.7.0'
  s.summary     = 'Spree Slider extension'
  s.description = 'Adds a slider to the homepage'
  s.authors            = ['Giuseppe Privitera', 'Leo Wang']
  s.email             = 'cgcmall.cn@gmail.com'
  s.homepage          = 'https://github.com/99cm/spree_slider'

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
  s.add_development_dependency 'factory_girl'
  s.add_development_dependency 'factory_girl_rails'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'guard-rspec'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'shoulda-matchers'
end

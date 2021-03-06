# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_brazilian_fields'
  s.version     = '2.1.2'
  s.summary     = 'Brazilian Fields For Spree ~> 2.1'
  s.description = 'Add customized fields for Spree::User'
  s.required_ruby_version = '>= 1.9.3'

  s.author    = 'Daniel Shimoyama'
  s.email     = 'shimoyama.daniel@gmail.com'
  s.homepage  = 'https://github.com/shimoyamadaniel'

  #s.files       = `git ls-files`.split("\n")
  #s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '~> 2.1.0'
  s.add_dependency 'spree_frontend', '~> 2.1.0'
  s.add_dependency 'money', '~> 5.1.1'
  s.add_dependency 'validates_timeliness', '~> 3.0'

  s.add_development_dependency 'capybara', '~> 2.1'
  s.add_development_dependency 'pry'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'shoulda-matchers'
  s.add_development_dependency 'factory_girl', '~> 4.2'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails',  '~> 2.13'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3'
end

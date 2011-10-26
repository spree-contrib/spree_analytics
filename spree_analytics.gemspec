# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_analytics'
  s.version     = '0.1.0'
  s.summary     = 'Spree Analytics Overview Replacement'
  s.description = 'Add (optional) gem description here'
  s.required_ruby_version = '>= 1.8.7'

  s.author            = 'Chris Mar'
  s.email             = 'chris@spreecommerce.com'
  s.homepage          = 'http://www.spreecommerce.com'
  # s.rubyforge_project = 'actionmailer'

  #s.files         = `git ls-files`.split("\n")
  #s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '>= 0.60.2'
  s.add_dependency 'rest-client'
  s.add_development_dependency 'rspec-rails'
end


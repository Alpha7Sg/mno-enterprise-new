$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require File.expand_path('../../core/lib/mno_enterprise/version', __FILE__)
version = MnoEnterprise::VERSION

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "mno-enterprise-core"
  s.version     = version
  s.authors     = ["Arnaud Lachaume"]
  s.email       = ["arnaud.lachaume@maestrano.com"]
  s.homepage    = "https://maestrano.com"
  s.summary     = "Maestrano Enterprise - Core functionnality"
  s.description = "Core functionnality of MNOE. This handles the core functionnality."
  s.license     = "Maestrano Enterprise License V1"

  s.files = Dir["{app,config,db,lib}/**/*", "LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", "~> 4.2.0"
  s.add_dependency "her", "~> 0.7.3"
  s.add_dependency "devise", "~> 3.0"
  s.add_dependency 'cancancan', '~> 1.10'
  s.add_dependency 'countries', '~> 0.11.3'
  s.add_dependency 'jwt', '~> 1.4.1'
  s.add_dependency 'mandrill-api', '~> 1.0.53'
  s.add_dependency 'deepstruct', '~> 0.0.7'
  s.add_dependency 'prawn', '~> 2.0.1'
  s.add_dependency 'prawn-table', '~> 0.2.1'
  s.add_dependency 'money', '~> 6.5.1'
  s.add_dependency 'httparty', '~> 0.13.7'

  # Markdown parsing
  s.add_dependency 'redcarpet', '~> 3.3.3'
  s.add_dependency 'sanitize'

  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'factory_girl_rails'
end

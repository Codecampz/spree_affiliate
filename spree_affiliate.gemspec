# -*- encoding: utf-8 -*-
# stub: spree_affiliate 2.2.1 ruby lib

Gem::Specification.new do |s|
  s.name = "spree_affiliate"
  s.version = "2.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Rails Dog"]
  s.date = "2014-10-20"
  s.description = "Affiliate support for Spree"
  s.email = "gems@railsdog.com"
  s.files = [".gitignore", ".rspec", "Gemfile", "Gemfile.lock", "LICENSE", "README.md", "Rakefile", "Versionfile", "app/assets/javascripts/spree/backend/spree_affiliate.js", "app/assets/javascripts/spree/frontend/spree_affiliate.js", "app/assets/stylesheets/spree/backend/spree_affiliate.css", "app/assets/stylesheets/spree/frontend/spree_affiliate.css", "app/controllers/spree/admin/affiliate_settings_controller.rb", "app/controllers/spree/affiliates_controller.rb", "app/controllers/spree/base_controller_decorator.rb", "app/controllers/spree/user_registrations_controller_decorator.rb", "app/controllers/spree/users_controller_decorator.rb", "app/helpers/spree/base_helper_decorator.rb", "app/models/spree/affiliate.rb", "app/models/spree/affiliate_event.rb", "app/models/spree/order_decorator.rb", "app/models/spree/user_decorator.rb", "app/overrides/spree/admin/shared/_configuration_menu/affiliates_admin_configuration_menu.html.haml.deface", "app/overrides/spree/users/show/affiliates_index.html.haml.deface", "app/views/spree/admin/affiliate_settings/edit.html.haml", "app/views/spree/admin/affiliate_settings/show.html.haml", "app/views/spree/affiliates/_affiliate.html.haml", "app/views/spree/affiliates/_affiliates.html.haml", "bin/rails", "config/initializers/load_configuration.rb", "config/locales/en.yml", "config/routes.rb", "db/migrate/20101022121217_create_affiliates.rb", "db/migrate/20101104145139_create_affiliate_events.rb", "lib/affiliate_credits.rb", "lib/generators/spree_affiliate/install/install_generator.rb", "lib/spree_affiliate.rb", "lib/spree_affiliate/configuration.rb", "lib/spree_affiliate/engine.rb", "lib/spree_affiliate/factories.rb", "spec/spec_helper.rb", "spree_affiliate.gemspec"]
  s.homepage = "http://github.com/spree/spree_affiliate"
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3")
  s.requirements = ["none"]
  s.rubygems_version = "2.2.2"
  s.summary = "Affiliate support for Spree"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<spree_core>, ["~> 2.4.0"])
      s.add_development_dependency(%q<capybara>, ["~> 2.1"])
      s.add_development_dependency(%q<coffee-rails>, [">= 0"])
      s.add_development_dependency(%q<database_cleaner>, [">= 0"])
      s.add_development_dependency(%q<factory_girl>, ["~> 4.4"])
      s.add_development_dependency(%q<ffaker>, [">= 0"])
      s.add_development_dependency(%q<rspec-rails>, ["~> 2.13"])
      s.add_development_dependency(%q<sass-rails>, [">= 0"])
      s.add_development_dependency(%q<selenium-webdriver>, [">= 0"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
      s.add_development_dependency(%q<sqlite3>, [">= 0"])
    else
      s.add_dependency(%q<spree_core>, ["~> 2.4.0"])
      s.add_dependency(%q<capybara>, ["~> 2.1"])
      s.add_dependency(%q<coffee-rails>, [">= 0"])
      s.add_dependency(%q<database_cleaner>, [">= 0"])
      s.add_dependency(%q<factory_girl>, ["~> 4.4"])
      s.add_dependency(%q<ffaker>, [">= 0"])
      s.add_dependency(%q<rspec-rails>, ["~> 2.13"])
      s.add_dependency(%q<sass-rails>, [">= 0"])
      s.add_dependency(%q<selenium-webdriver>, [">= 0"])
      s.add_dependency(%q<simplecov>, [">= 0"])
      s.add_dependency(%q<sqlite3>, [">= 0"])
    end
  else
    s.add_dependency(%q<spree_core>, ["~> 2.4.0"])
    s.add_dependency(%q<capybara>, ["~> 2.1"])
    s.add_dependency(%q<coffee-rails>, [">= 0"])
    s.add_dependency(%q<database_cleaner>, [">= 0"])
    s.add_dependency(%q<factory_girl>, ["~> 4.4"])
    s.add_dependency(%q<ffaker>, [">= 0"])
    s.add_dependency(%q<rspec-rails>, ["~> 2.13"])
    s.add_dependency(%q<sass-rails>, [">= 0"])
    s.add_dependency(%q<selenium-webdriver>, [">= 0"])
    s.add_dependency(%q<simplecov>, [">= 0"])
    s.add_dependency(%q<sqlite3>, [">= 0"])
  end
end

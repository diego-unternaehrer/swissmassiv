# -*- encoding: utf-8 -*-
# stub: solidus_i18n 2.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "solidus_i18n".freeze
  s.version = "2.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Thomas von Deyen".freeze]
  s.date = "2018-05-03"
  s.description = "Provides locale information for use in Solidus.".freeze
  s.email = "tvd@magiclabs.de".freeze
  s.homepage = "https://solidus.io".freeze
  s.licenses = ["BSD-3".freeze]
  s.requirements = ["none".freeze]
  s.rubygems_version = "3.0.3".freeze
  s.summary = "Provides locale information for use in Solidus.".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<solidus_core>.freeze, [">= 1.1", "< 3"])
      s.add_development_dependency(%q<pry-rails>.freeze, [">= 0.3.0"])
      s.add_development_dependency(%q<rubocop>.freeze, [">= 0.24.1"])
      s.add_development_dependency(%q<rspec-rails>.freeze, ["~> 3.1"])
      s.add_development_dependency(%q<simplecov>.freeze, ["~> 0.9"])
    else
      s.add_dependency(%q<solidus_core>.freeze, [">= 1.1", "< 3"])
      s.add_dependency(%q<pry-rails>.freeze, [">= 0.3.0"])
      s.add_dependency(%q<rubocop>.freeze, [">= 0.24.1"])
      s.add_dependency(%q<rspec-rails>.freeze, ["~> 3.1"])
      s.add_dependency(%q<simplecov>.freeze, ["~> 0.9"])
    end
  else
    s.add_dependency(%q<solidus_core>.freeze, [">= 1.1", "< 3"])
    s.add_dependency(%q<pry-rails>.freeze, [">= 0.3.0"])
    s.add_dependency(%q<rubocop>.freeze, [">= 0.24.1"])
    s.add_dependency(%q<rspec-rails>.freeze, ["~> 3.1"])
    s.add_dependency(%q<simplecov>.freeze, ["~> 0.9"])
  end
end

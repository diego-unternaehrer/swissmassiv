# -*- encoding: utf-8 -*-
# stub: friendly_id-globalize 1.0.0.alpha3 ruby lib

Gem::Specification.new do |s|
  s.name = "friendly_id-globalize".freeze
  s.version = "1.0.0.alpha3"

  s.required_rubygems_version = Gem::Requirement.new("> 1.3.1".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Norman Clarke".freeze, "Philip Arndt".freeze]
  s.date = "2017-04-30"
  s.description = "Adds Globalize support to the FriendlyId gem.".freeze
  s.email = ["norman@njclarke.com".freeze, "p@arndt.io".freeze]
  s.homepage = "http://github.com/norman/friendly_id-globalize".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3".freeze)
  s.rubygems_version = "3.0.3".freeze
  s.summary = "Globalize support for FriendlyId.".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<friendly_id>.freeze, [">= 5.2.0", "< 6.0"])
      s.add_development_dependency(%q<minitest>.freeze, [">= 0"])
      s.add_development_dependency(%q<yard>.freeze, [">= 0"])
      s.add_development_dependency(%q<globalize>.freeze, [">= 0"])
    else
      s.add_dependency(%q<friendly_id>.freeze, [">= 5.2.0", "< 6.0"])
      s.add_dependency(%q<minitest>.freeze, [">= 0"])
      s.add_dependency(%q<yard>.freeze, [">= 0"])
      s.add_dependency(%q<globalize>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<friendly_id>.freeze, [">= 5.2.0", "< 6.0"])
    s.add_dependency(%q<minitest>.freeze, [">= 0"])
    s.add_dependency(%q<yard>.freeze, [">= 0"])
    s.add_dependency(%q<globalize>.freeze, [">= 0"])
  end
end

# -*- encoding: utf-8 -*-
# stub: active_admin_theme 1.0.3 ruby lib

Gem::Specification.new do |s|
  s.name = "active_admin_theme".freeze
  s.version = "1.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Igor Fedoronchuk".freeze, "Alex Sikorskiy".freeze]
  s.date = "2015-11-19"
  s.description = "Flat design for activeadmin gem ".freeze
  s.email = ["igor.f@didww.com".freeze, "alex.s@didww.com".freeze]
  s.homepage = "https://github.com/didww/active_admin_theme".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.7.8".freeze
  s.summary = "Flat design for ActiveAdmin".freeze

  s.installed_by_version = "2.7.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.7"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
    else
      s.add_dependency(%q<bundler>.freeze, ["~> 1.7"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.7"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
  end
end

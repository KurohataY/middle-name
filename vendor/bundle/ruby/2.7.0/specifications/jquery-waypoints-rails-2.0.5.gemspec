# -*- encoding: utf-8 -*-
# stub: jquery-waypoints-rails 2.0.5 ruby lib

Gem::Specification.new do |s|
  s.name = "jquery-waypoints-rails".freeze
  s.version = "2.0.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Wagner Amaral".freeze, "Daniel Libanori".freeze, "Albert Bellonch Llargu\u00E9s".freeze]
  s.date = "2014-12-12"
  s.email = ["wamaral@wamaral.org".freeze, "daniellibanori@gmail.com".freeze, "albert@itnig.net".freeze]
  s.homepage = "http://github.com/wamaral/jquery-waypoints-rails".freeze
  s.rubygems_version = "3.1.2".freeze
  s.summary = "This gem just adds jquery-waypoints to your ASSets".freeze

  s.installed_by_version = "3.1.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<rails>.freeze, [">= 3.1.0"])
    s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
  else
    s.add_dependency(%q<rails>.freeze, [">= 3.1.0"])
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
  end
end

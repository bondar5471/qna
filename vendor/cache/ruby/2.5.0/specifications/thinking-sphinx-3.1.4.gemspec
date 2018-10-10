# -*- encoding: utf-8 -*-
# stub: thinking-sphinx 3.1.4 ruby lib

Gem::Specification.new do |s|
  s.name = "thinking-sphinx".freeze
  s.version = "3.1.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Pat Allan".freeze]
  s.date = "2015-06-01"
  s.description = "An intelligent layer for ActiveRecord (via Rails and Sinatra) for the Sphinx full-text search tool.".freeze
  s.email = ["pat@freelancing-gods.com".freeze]
  s.homepage = "https://pat.github.io/thinking-sphinx/".freeze
  s.licenses = ["MIT".freeze]
  s.rubyforge_project = "thinking-sphinx".freeze
  s.rubygems_version = "2.7.6".freeze
  s.summary = "A smart wrapper over Sphinx for ActiveRecord".freeze

  s.installed_by_version = "2.7.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activerecord>.freeze, [">= 3.1.0"])
      s.add_runtime_dependency(%q<builder>.freeze, [">= 2.1.2"])
      s.add_runtime_dependency(%q<joiner>.freeze, [">= 0.2.0"])
      s.add_runtime_dependency(%q<middleware>.freeze, [">= 0.1.0"])
      s.add_runtime_dependency(%q<innertube>.freeze, [">= 1.0.2"])
      s.add_runtime_dependency(%q<riddle>.freeze, [">= 1.5.11"])
      s.add_development_dependency(%q<appraisal>.freeze, ["~> 1.0.2"])
      s.add_development_dependency(%q<combustion>.freeze, ["~> 0.4.0"])
      s.add_development_dependency(%q<database_cleaner>.freeze, ["~> 1.2.0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 2.13.0"])
    else
      s.add_dependency(%q<activerecord>.freeze, [">= 3.1.0"])
      s.add_dependency(%q<builder>.freeze, [">= 2.1.2"])
      s.add_dependency(%q<joiner>.freeze, [">= 0.2.0"])
      s.add_dependency(%q<middleware>.freeze, [">= 0.1.0"])
      s.add_dependency(%q<innertube>.freeze, [">= 1.0.2"])
      s.add_dependency(%q<riddle>.freeze, [">= 1.5.11"])
      s.add_dependency(%q<appraisal>.freeze, ["~> 1.0.2"])
      s.add_dependency(%q<combustion>.freeze, ["~> 0.4.0"])
      s.add_dependency(%q<database_cleaner>.freeze, ["~> 1.2.0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 2.13.0"])
    end
  else
    s.add_dependency(%q<activerecord>.freeze, [">= 3.1.0"])
    s.add_dependency(%q<builder>.freeze, [">= 2.1.2"])
    s.add_dependency(%q<joiner>.freeze, [">= 0.2.0"])
    s.add_dependency(%q<middleware>.freeze, [">= 0.1.0"])
    s.add_dependency(%q<innertube>.freeze, [">= 1.0.2"])
    s.add_dependency(%q<riddle>.freeze, [">= 1.5.11"])
    s.add_dependency(%q<appraisal>.freeze, ["~> 1.0.2"])
    s.add_dependency(%q<combustion>.freeze, ["~> 0.4.0"])
    s.add_dependency(%q<database_cleaner>.freeze, ["~> 1.2.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 2.13.0"])
  end
end

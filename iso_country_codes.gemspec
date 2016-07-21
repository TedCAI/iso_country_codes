# -*- encoding: utf-8 -*-
# stub: iso_country_codes 0.6.1 ruby lib

Gem::Specification.new do |s|
  s.name = "iso_country_codes"
  s.version = "0.6.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Alex Rabarts"]
  s.date = "2016-03-28"
  s.description = "ISO country code and currency library"
  s.email = "alexrabarts@gmail.com"
  s.extra_rdoc_files = ["README.rdoc"]
  s.files = [".gitignore", ".travis.yml", "Gemfile", "Gemfile.lock", "History.txt", "Manifest.txt", "README.rdoc", "Rakefile", "VERSION", "iso_country_codes.gemspec", "lib/iso_country_codes.rb", "lib/iso_country_codes/calling.rb", "lib/iso_country_codes/code.rb", "lib/iso_country_codes/configuration.rb", "lib/iso_country_codes/continent.rb", "lib/iso_country_codes/iso_3166_1.rb", "lib/iso_country_codes/iso_4217.rb", "lib/iso_country_codes/iso_country_codes.rb", "rakelib/cultivate.rake", "rakelib/iso_3166_1.rake", "rakelib/iso_3166_1.rb", "rakelib/iso_3166_1.rb.erb", "test/iso_country_codes_test.rb"]
  s.homepage = "http://github.com/alexrabarts/iso_country_codes"
  s.licenses = ["MIT"]
  s.rdoc_options = ["--charset=UTF-8"]
  s.rubygems_version = "2.4.8"
  s.summary = "Provides ISO 3166-1 country codes/names and ISO 4217 currencies."
  s.test_files = ["test/iso_country_codes_test.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 0"])
      s.add_development_dependency(%q<shoulda>, ["~> 0"])
      s.add_development_dependency(%q<mocha>, ["~> 0"])
      s.add_development_dependency(%q<nokogiri>, ["~> 0"])
    else
      s.add_dependency(%q<bundler>, ["~> 0"])
      s.add_dependency(%q<shoulda>, ["~> 0"])
      s.add_dependency(%q<mocha>, ["~> 0"])
      s.add_dependency(%q<nokogiri>, ["~> 0"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 0"])
    s.add_dependency(%q<shoulda>, ["~> 0"])
    s.add_dependency(%q<mocha>, ["~> 0"])
    s.add_dependency(%q<nokogiri>, ["~> 0"])
  end
end

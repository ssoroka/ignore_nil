# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{ignore_nil}
  s.version = "1.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Steven Soroka"]
  s.date = %q{2009-09-23}
  s.description = %q{ignore_nil lets you happily ignore nil methods on long method chains.  Keeps code pretty and much safer than "rescue nil", since it only catches NoMethodError on nil objects}
  s.email = %q{ssoroka78@gmail.com}
  s.extra_rdoc_files = ["lib/ignore_nil.rb", "README.rdoc"]
  s.files = ["ignore_nil.gemspec", "init.rb", "lib/ignore_nil.rb", "Rakefile", "README.rdoc", "test/ignore_nil_test.rb"]
  s.homepage = %q{http://github.com/ssoroka/ignore_nil}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Ignore_nil", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{ignore_nil}
  s.rubygems_version = %q{1.3.3}
  s.summary = %q{ignore_nil lets you happily ignore nil methods on long method chains.  Keeps code pretty and much safer than "rescue nil", since it only catches NoMethodError on nil objects}
  s.test_files = ["test/ignore_nil_test.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

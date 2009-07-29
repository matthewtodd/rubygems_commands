# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rubygems_commands}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Matthew Todd"]
  s.date = %q{2009-07-29}
  s.email = %q{matthew.todd@gmail.com}
  s.extra_rdoc_files = ["README.rdoc"]
  s.files = ["Rakefile", "README.rdoc", "lib/rubygems", "lib/rubygems/commands", "lib/rubygems/commands/doc_command.rb", "lib/rubygems/commands/export_command.rb", "lib/rubygems/commands/mate_command.rb", "lib/rubygems_commands.rb", "lib/rubygems_plugin.rb", "lib/tabtab_definitions", "lib/tabtab_definitions/gem.rb"]
  s.rdoc_options = ["--main", "README.rdoc", "--title", "rubygems_commands-0.1.0", "--inline-source"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Random useful rubygems plugins, with tab completion.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<matthewtodd-shoe>, [">= 0"])
      s.add_runtime_dependency(%q<tabtab>, [">= 0"])
    else
      s.add_dependency(%q<matthewtodd-shoe>, [">= 0"])
      s.add_dependency(%q<tabtab>, [">= 0"])
    end
  else
    s.add_dependency(%q<matthewtodd-shoe>, [">= 0"])
    s.add_dependency(%q<tabtab>, [">= 0"])
  end
end

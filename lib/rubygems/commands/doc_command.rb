require 'rubygems/command'

class Gem::Commands::DocCommand < Gem::Command
  def initialize
    super 'doc', 'Open gem rdoc'
  end

  def execute
    index = Gem::SourceIndex.from_installed_gems
    spec = index.find_name(get_one_gem_name, Gem::Requirement.default).last

    if spec.has_rdoc?
      exec 'open', File.join(spec.installation_path, 'doc', spec.full_name, 'rdoc', 'index.html')
    else
      $stderr.puts "#{spec.full_name} does not have rdoc."
    end

    def usage
      "#{program_name} GEMNAME"
    end
  end
end

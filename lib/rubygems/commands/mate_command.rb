require 'rubygems/command'

class Gem::Commands::MateCommand < Gem::Command
  def initialize
    super 'mate', 'Open gem source in TextMate'
  end

  def execute
    index = Gem::SourceIndex.from_installed_gems
    spec = index.find_name(get_one_gem_name, Gem::Requirement.default).last
    exec 'mate', spec.full_gem_path
  end

  def usage
    "#{program_name} GEMNAME"
  end
end

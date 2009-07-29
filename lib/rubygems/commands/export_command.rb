require 'rubygems/command'

class Gem::Commands::ExportCommand < Gem::Command
  def initialize
    super 'export', 'Copy a gem and its dependencies into the current directory'
  end

  def execute
    export(get_one_gem_name)
  end

  def usage
    "#{program_name} GEMNAME"
  end

  private

  def export(name)
    index = Gem::SourceIndex.from_installed_gems
    spec = index.find_name(name, Gem::Requirement.default).last
    FileUtils.copy(File.join(spec.installation_path, 'cache', spec.file_name), '.')
    spec.runtime_dependencies.each { |d| export(d.name) }
  end
end

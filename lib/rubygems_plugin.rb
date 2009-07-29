require 'rubygems/command_manager'

[:doc, :export, :mate].each do |command|
  Gem::CommandManager.instance.register_command(command)
end

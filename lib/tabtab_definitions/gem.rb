require 'rubygems'

def locally_installed_gems
  Gem::SourceIndex.from_installed_gems.latest_specs.map { |spec| spec.name }
end

TabTab::Definition.register('gem') do |c|
  c.command(:doc)    { locally_installed_gems }
  c.command(:export) { locally_installed_gems }
  c.command(:mate)   { locally_installed_gems }
end

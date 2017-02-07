require 'beaker-rspec/spec_helper'
require 'beaker-rspec/helpers/serverspec'

unless ENV['RS_PROVISION'] == 'no'
  hosts.each do |host|
    # Install Puppet
    if host.is_pe?
      install_pe
    else
      install_puppet_agent_on(host, { :puppet_agent_version => '1.8.3', })
    end
  end
end

RSpec.configure do |c|
  # Project root
  proj_root = File.expand_path(File.join(File.dirname(__FILE__), '..'))

  # Readable test descriptions
  c.formatter = :documentation

  # Configure all nodes in nodeset
  c.before :suite do
    # Install module and dependencies
    puppet_module_install(source: proj_root, module_name: 'simianarmy')
    hosts.each do |host|
      on host, puppet('module', 'install', 'puppetlabs-java'), acceptable_exit_codes: [0, 1]
      on host, puppet('module', 'install', 'puppet-archive'), acceptable_exit_codes: [0, 1]
      apply_manifest('class { "java": distribution => "jre" }')
      apply_manifest('package { "tree": ensure => present }')
    end
  end
end

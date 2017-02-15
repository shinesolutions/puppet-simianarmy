# == Class: simianarmy
#
# Install and configure the Netflix Simian Army
#
# === Parameters
#
# [*service_name*]
#   The name of the service when it is installed. Defaults to
#   `simianarmy` and several other variables are based on it. You probably
#   shouldn't change this.
#
# [*basedir*]
#   Path to the base directory for installation. Defaults to
#   '/opt/netflix' and several other paths are based on it.
#
# [*installdir*]
#   Path to the directory for installation. The JAR file and configuration
#   files are installed here. Defaults to <basedir>/<service_name>.
#
# [*homedir*]
#   Path to the home directory for the user the service runs as. Only used if
#   <manage_homedir> is true.
#
# [*user*]
#   The user the service runs as. Defaults to <service_name>.
#
# [*group*]
#   The primary group for user the service runs as. Defaults to <service_name>.
#
# [*warfile_source*]
#   Source URL for the Netflix Simian Army JAR file.
#
# [*warfile_checksum_value*]
#   Checksum of the Netflix Simian Army file. If not specified and an HTTP URL
#   is used, Puppet will treat the `File` resource as updated on every run.
#
# [*manage_basedir*]
#   Whether or not to manage <basedir> as a resource in Puppet.
#
# [*manage_installdir*]
#   Whether or not to manage <installdir> as a resource in Puppet.
#
# [*manage_homedir*]
#   Whether or not to manage <homedir> as a resource in Puppet.
#
# [*manage_user*]
#   Whether or not to manage <user> as a resource in Puppet.
#
# [*manage_group*]
#   Whether or not to manage <group> as a resource in Puppet.
#
# [*warfile_checksum_value*]
#   Checksum type used for `warfile_checksum_value`.
#
# [*warfile_checksum_type*]
#   The checksum algorithm used to produce `warfile_checksum_value`.
#
# [*warfile_mode*]
#   File mode for the WAR file.
#
# [*aws_profile*]
#   If specified, sets the `AWS_PROFILE` variable in the service's environment.
#
# === Examples
#
#  include simianarmy
#
# === Authors
#
# James Sinclair <james.sinclair@shinesolutions.com>
#
# === Copyright
#
# Copyright © 2017	Shine Solutions Group, unless otherwise noted.
#
class simianarmy (
  $service_name,
  $basedir,
  $installdir,
  $homedir,
  $user,
  $group,

  $warfile_source,
  $warfile_checksum_value,
  $warfile_checksum_type = 'sha256',
  $warfile_mode          = '0400',

  $manage_basedir    = true,
  $manage_installdir = false,
  $manage_homedir    = true,
  $manage_user       = true,
  $manage_group      = true,

  $aws_profile = undef,
){
  if $manage_basedir {
    file { $basedir:
      ensure => directory,
    }
    $basedir_require = File[$basedir]
  } else {
    $basedir_require = undef
  }
  if $manage_user {
    group { $group:
      ensure => present,
      system => true,
    }
    user { $user:
      ensure     => present,
      home       => $homedir,
      managehome => $manage_homedir,
      system     => true,
      shell      => '/usr/sbin/nologin',
      gid        => $group,
      expiry     => absent,
    }
  }
  if $manage_installdir {
    file { [ $installdir ]:
      ensure  => directory,
      owner   => $user,
      group   => $group,
      require => [ $basedir_require, User[$user] ],
    }
    $file_requires = [ File[$installdir], User[$user] ]
  } else {
    $file_requires = [ User[$user] ]
  }

  $warfile = "${homedir}/${service_name}.war"
  $webapp_path = "${installdir}/${service_name}"

  package { [ 'tomcat' ]:
    ensure => latest,
  } ->
  file { $webapp_path:
    ensure => directory,
    owner  => $user,
    group  => 'tomcat',
    mode   => '0750',
  } ->
  archive { $warfile:
    ensure        => present,
    source        => $warfile_source,
    extract       => true,
    extract_path  => $webapp_path,
    creates       => "${webapp_path}/WEB-INF",
    user          => $user,
    group         => 'tomcat',
    checksum_type => $warfile_checksum_type,
    checksum      => $warfile_checksum_value,
  } ->
  file { $warfile:
    owner => $user,
    group => $group,
    mode  => $warfile_mode,
  } ->
  class {
    [
      '::simianarmy::chaos_properties',
      '::simianarmy::client_properties',
      '::simianarmy::conformity_properties',
      '::simianarmy::janitor_properties',
      '::simianarmy::log4j_properties',
      '::simianarmy::simianarmy_properties',
      '::simianarmy::volume_tagging_properties',
    ]:
      owner => $user,
      group => 'tomcat',
  } ->
  service { 'tomcat':
    ensure => running,
    enable => true,
  }
}

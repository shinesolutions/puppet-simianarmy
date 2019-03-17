# @summary
#   Install and configure the Netflix Simian Army
#
# @param service_name
#   The name of the service when it is installed. Defaults to
#   `simianarmy` and several other variables are based on it. You probably
#   shouldn't change this.
#
# @param basedir
#   Path to the base directory for installation. Defaults to
#   '/opt/netflix' and several other paths are based on it.
#
# @param basedir_mode
#   File mode for the base directory.
#
# @param installdir
#   Path to the directory for installation. The JAR file and configuration
#   files are installed here. Defaults to <basedir>/<service_name>.
#
# @param installdir_mode
#   File mode for the installation directory.
#
# @param homedir
#   Path to the home directory for the user the service runs as. Only used if
#   <manage_homedir> is true.
#
# @param user
#   The user the service runs as. Defaults to <service_name>.
#
# @param group
#   The primary group for user the service runs as. Defaults to <service_name>.
#
# @param warfile_source
#   Source URL for the Netflix Simian Army JAR file.
#
# @param warfile_checksum_value
#   Checksum of the Netflix Simian Army file. If not specified and an HTTP URL
#   is used, Puppet will treat the `File` resource as updated on every run.
#
# @param manage_basedir
#   Whether or not to manage <basedir> as a resource in Puppet.
#
# @param manage_installdir
#   Whether or not to manage <installdir> as a resource in Puppet.
#
# @param manage_homedir
#   Whether or not to manage <homedir> as a resource in Puppet.
#
# @param manage_user
#   Whether or not to manage <user> as a resource in Puppet.
#
# @param manage_group
#   Whether or not to manage <group> as a resource in Puppet.
#
# @param manage_package
#   Whether or not to manage the installation of package <tomcat_pkg_name>.
#
# @param warfile_checksum_value
#   Checksum type used for `warfile_checksum_value`.
#
# @param warfile_checksum_type
#   The checksum algorithm used to produce `warfile_checksum_value`.
#
# @param warfile_mode
#   File mode for the WAR file.
#
# @param shell
#   shell for the user to run tomcat
#
# @param tomcat_pkg_name
#   platform specific tomcat package name
#
# @param tomcat_srv_name
#   platform specific tomcat service name
#
# @param aws_profile
#   If specified, sets the `AWS_PROFILE` variable in the service's environment.
#
# @example
#   include simianarmy
#
# @author James Sinclair <james.sinclair@shinesolutions.com>
#
# Copyright © 2017	Shine Solutions Group, unless otherwise noted.
#
class simianarmy (
  String $service_name,
  String $basedir,
  String $installdir,
  String $homedir,
  String $user,
  String $group,

  String $warfile_source,
  String $warfile_checksum_value,
  String $warfile_checksum_type = 'sha256',
  String $warfile_mode          = '0400',

  String $basedir_mode    = '0755',
  String $installdir_mode = '0750',

  Boolean $manage_basedir    = true,
  Boolean $manage_installdir = false,
  Boolean $manage_homedir    = true,
  Boolean $manage_user       = true,
  Boolean $manage_group      = true,
  Boolean $manage_package    = true,

  String $shell = '/usr/sbin/nologin',
  String $tomcat_pkg_name = 'tomcat',
  String $tomcat_srv_name = 'tomcat',

  Variant[String, Undef] $aws_profile = undef,
){
  if $manage_basedir {
    file { $basedir:
      ensure => directory,
      mode   => $basedir_mode,
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
      shell      => $shell,
      gid        => $group,
      expiry     => absent,
    }
  }
  if $manage_installdir {
    file { [ $installdir ]:
      ensure  => directory,
      owner   => $user,
      group   => $group,
      mode    => $installdir_mode,
      require => [ $basedir_require, User[$user] ],
    }
    $file_requires = [ File[$installdir], User[$user] ]
  } else {
    $file_requires = [ User[$user] ]
  }

  $warfile = "${homedir}/${service_name}.war"
  $webapp_path = "${installdir}/${service_name}"

  if $manage_package {
    package { [ $tomcat_pkg_name ]:
      ensure => latest,
      before => File[$webapp_path],
    }
  }

  file { $webapp_path:
    ensure => directory,
    owner  => $user,
    group  => 'tomcat',
    mode   => '0750',
  }
  -> archive { $warfile:
    ensure        => present,
    source        => $warfile_source,
    extract       => true,
    extract_path  => $webapp_path,
    creates       => "${webapp_path}/WEB-INF",
    user          => $user,
    group         => 'tomcat',
    checksum_type => $warfile_checksum_type,
    checksum      => $warfile_checksum_value,
  }
  -> file { $warfile:
    owner => $user,
    group => $group,
    mode  => $warfile_mode,
  }
  -> class {
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
  }
  -> service { $tomcat_srv_name:
    ensure => running,
    enable => true,
  }
}

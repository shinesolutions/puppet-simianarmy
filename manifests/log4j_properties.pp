# == Class: simianarmy::log4j_properties
#
# Write the `application.properties` file.
#
# === Parameters
#
# [*path*]
#   The path to the application.properties file on disk. Required.
#
# [*owner*]
#   The user that should own the application.properties file. This user is *not*
#   created by this module and should be managed elsewhere. Required.
#
# [*group*]
#   The group that should own the application.properties file. This group is
#   *not* created by this module and should be managed elsewhere. Required.
#
# [*mode*]
#   The mode of the application.properties file. Passed to the `file` resource.
#
# [*log4j_appender_stdout*]
#   Java property `log4j.appender.stdout`
#
# [*log4j_appender_stdout_layout*]
#   Java property `log4j.appender.stdout.layout`
#
# [*log4j_appender_stdout_layout_conversion_pattern*]
#   Java property `log4j.appender.stdout.layout.ConversionPattern`
#
# [*log4j_root_logger*]
#   Java property `log4j.rootLogger`
#
# === Examples
#
#  This is an internal class that isn't normally used. You can change values
#  for it's parameters using Hiera.
#
# === Authors
#
# This is an auto-generated class.
#
# === Copyright
#
# Copyright © 2017 Shine Solutions Group, unless otherwise noted.
#
class simianarmy::log4j_properties (
  $path,
  $owner,
  $group,
  $mode,

  $log4j_appender_stdout = undef,
  $log4j_appender_stdout_layout = undef,
  $log4j_appender_stdout_layout_conversion_pattern = undef,
  $log4j_root_logger = undef,

) {
  file { $path:
    ensure  => file,
    owner   => $owner,
    group   => $group,
    mode    => $mode,
    content => template('simianarmy/log4j_properties.erb'),
  }
}

# == Class: simianarmy::volume_tagging_properties
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
# [*simianarmy_calendar_is_monkey_time*]
#   Java property `simianarmy.calendar.isMonkeyTime`
#
# [*simianarmy_volume_tagging_enabled*]
#   Java property `simianarmy.volumeTagging.enabled`
#
# [*simianarmy_volume_tagging_leashed*]
#   Java property `simianarmy.volumeTagging.leashed`
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
class simianarmy::volume_tagging_properties (
  $path,
  $owner,
  $group,
  $mode,

  $simianarmy_calendar_is_monkey_time = undef,
  $simianarmy_volume_tagging_enabled = undef,
  $simianarmy_volume_tagging_leashed = undef,

) {
  file { $path:
    ensure  => file,
    owner   => $owner,
    group   => $group,
    mode    => $mode,
    content => template('simianarmy/volume_tagging_properties.erb'),
  }
}

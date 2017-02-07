# == Class: simianarmy::simianarmy_properties
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
# [*simianarmy_calendar_close_hour*]
#   Java property `simianarmy.calendar.closeHour`
#
# [*simianarmy_calendar_open_hour*]
#   Java property `simianarmy.calendar.openHour`
#
# [*simianarmy_calendar_timezone*]
#   Java property `simianarmy.calendar.timezone`
#
# [*simianarmy_recorder_sdb_domain*]
#   Java property `simianarmy.recorder.sdb.domain`
#
# [*simianarmy_scheduler_frequency*]
#   Java property `simianarmy.scheduler.frequency`
#
# [*simianarmy_scheduler_frequency_unit*]
#   Java property `simianarmy.scheduler.frequencyUnit`
#
# [*simianarmy_scheduler_threads*]
#   Java property `simianarmy.scheduler.threads`
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
class simianarmy::simianarmy_properties (
  $path,
  $owner,
  $group,
  $mode,

  $simianarmy_calendar_close_hour = undef,
  $simianarmy_calendar_open_hour = undef,
  $simianarmy_calendar_timezone = undef,
  $simianarmy_recorder_sdb_domain = undef,
  $simianarmy_scheduler_frequency = undef,
  $simianarmy_scheduler_frequency_unit = undef,
  $simianarmy_scheduler_threads = undef,

) {
  file { $path:
    ensure  => file,
    owner   => $owner,
    group   => $group,
    mode    => $mode,
    content => template('simianarmy/simianarmy_properties.erb'),
  }
}

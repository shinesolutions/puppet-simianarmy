# @summary
#   Write the `simianarmy.properties` file.
#
#  This class writes the `simianarmy.properties` file for the Netflix Chaos
#  Monkey.  It is auto-generated and should not be modified by hand.
#  Documentation for each of the properties can be found in the example
#  `simianarmy.properties` from which it is generated. (see below)
#
#  _Note:_ This is an internal class that shouldn't be used directly. It is
#  included by the `simianarmy` class. You can change values for it's
#  parameters using Hiera.
#
# @see https://github.com/Netflix/SimianArmy/blob/master/src/main/resources/simianarmy.properties
#   The example `simianarmy.properties` file.
#
# @param path
#   The path to the simianarmy.properties file on disk. Required.
#
# @param owner
#   The user that should own the simianarmy.properties file. This user is *not*
#   created by this module and should be managed elsewhere. Required.
#
# @param group
#   The group that should own the simianarmy.properties file. This group is
#   *not* created by this module and should be managed elsewhere. Required.
#
# @param mode
#   The mode of the simianarmy.properties file. Passed to the `file` resource.
#
# @param simianarmy_aws_email_region
#   Java property `simianarmy.aws.email.region`
#
# @param simianarmy_calendar_close_hour
#   Java property `simianarmy.calendar.closeHour`
#
# @param simianarmy_calendar_is_monkey_time
#   Java property `simianarmy.calendar.isMonkeyTime`
#
# @param simianarmy_calendar_open_hour
#   Java property `simianarmy.calendar.openHour`
#
# @param simianarmy_calendar_timezone
#   Java property `simianarmy.calendar.timezone`
#
# @param simianarmy_recorder_localdb_file
#   Java property `simianarmy.recorder.localdb.file`
#
# @param simianarmy_recorder_localdb_max_events
#   Java property `simianarmy.recorder.localdb.max_events`
#
# @param simianarmy_recorder_localdb_password
#   Java property `simianarmy.recorder.localdb.password`
#
# @param simianarmy_recorder_sdb_domain
#   Java property `simianarmy.recorder.sdb.domain`
#
# @param simianarmy_scheduler_frequency
#   Java property `simianarmy.scheduler.frequency`
#
# @param simianarmy_scheduler_frequency_unit
#   Java property `simianarmy.scheduler.frequencyUnit`
#
# @param simianarmy_scheduler_threads
#   Java property `simianarmy.scheduler.threads`
#
# @param simianarmy_tags_owner
#   Java property `simianarmy.tags.owner`
#
#
# Copyright © 2017 Shine Solutions Group, unless otherwise noted.
#
class simianarmy::simianarmy_properties (
  String $path,
  String $owner,
  String $group,
  String $mode,

  Variant[String, Undef] $simianarmy_aws_email_region = undef,
  Variant[String, Undef] $simianarmy_calendar_close_hour = undef,
  Variant[String, Undef] $simianarmy_calendar_is_monkey_time = undef,
  Variant[String, Undef] $simianarmy_calendar_open_hour = undef,
  Variant[String, Undef] $simianarmy_calendar_timezone = undef,
  Variant[String, Undef] $simianarmy_recorder_localdb_file = undef,
  Variant[String, Undef] $simianarmy_recorder_localdb_max_events = undef,
  Variant[String, Undef] $simianarmy_recorder_localdb_password = undef,
  Variant[String, Undef] $simianarmy_recorder_sdb_domain = undef,
  Variant[String, Undef] $simianarmy_scheduler_frequency = undef,
  Variant[String, Undef] $simianarmy_scheduler_frequency_unit = undef,
  Variant[String, Undef] $simianarmy_scheduler_threads = undef,
  Variant[String, Undef] $simianarmy_tags_owner = undef,

) {
  file { $path:
    ensure  => file,
    owner   => $owner,
    group   => $group,
    mode    => $mode,
    content => template('simianarmy/simianarmy_properties.erb'),
  }
}

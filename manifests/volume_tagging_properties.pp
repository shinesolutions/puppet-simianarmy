# @summary
#   Write the `volumeTagging.properties` file.
#
#  This class writes the `volumeTagging.properties` file for the Netflix Chaos
#  Monkey. It is auto-generated and should not be modified by hand.
#  Documentation for each of the properties can be found in the example
#  `volumeTagging.properties` from which it is generated. (see below)
#
#  _Note:_ This is an internal class that shouldn't be used directly. It is
#  included by the `simianarmy` class. You can change values for it's
#  parameters using Hiera.
#
# @see https://github.com/Netflix/SimianArmy/blob/master/src/main/resources/volumeTagging.properties
#   The example `volumeTagging.properties` file.
#
# @param path
#   The path to the volumeTagging.properties file on disk. Required.
#
# @param owner
#   The user that should own the volumeTagging.properties file. This user is *not*
#   created by this module and should be managed elsewhere. Required.
#
# @param group
#   The group that should own the volumeTagging.properties file. This group is
#   *not* created by this module and should be managed elsewhere. Required.
#
# @param mode
#   The mode of the volumeTagging.properties file. Passed to the `file` resource.
#
# @param simianarmy_calendar_is_monkey_time
#   Java property `simianarmy.calendar.isMonkeyTime`
#
# @param simianarmy_volume_tagging_enabled
#   Java property `simianarmy.volumeTagging.enabled`
#
# @param simianarmy_volume_tagging_leashed
#   Java property `simianarmy.volumeTagging.leashed`
#
# @param simianarmy_volume_tagging_owner_email_domain
#   Java property `simianarmy.volumeTagging.ownerEmailDomain`
#
#
# Copyright © 2017 Shine Solutions Group, unless otherwise noted.
#
class simianarmy::volume_tagging_properties (
  String $path,
  String $owner,
  String $group,
  String $mode,

  Variant[String, Undef] $simianarmy_calendar_is_monkey_time = undef,
  Variant[String, Undef] $simianarmy_volume_tagging_enabled = undef,
  Variant[String, Undef] $simianarmy_volume_tagging_leashed = undef,
  Variant[String, Undef] $simianarmy_volume_tagging_owner_email_domain = undef,

) {
  file { $path:
    ensure  => file,
    owner   => $owner,
    group   => $group,
    mode    => $mode,
    content => template('simianarmy/volume_tagging_properties.erb'),
  }
}

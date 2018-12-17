# @summary
#   Write the `chaos.properties` file.
#
#  This class writes the `chaos.properties` file for the Netflix Chaos Monkey.
#  It is auto-generated and should not be modified by hand.  Documentation for
#  each of the properties can be found in the example `chaos.properties` from
#  which it is generated. (see below)
#
#  _Note:_ This is an internal class that shouldn't be used directly. It is
#  included by the `simianarmy` class. You can change values for it's
#  parameters using Hiera.
#
# @see https://github.com/Netflix/SimianArmy/blob/master/src/main/resources/chaos.properties
#   The example `chaos.properties` file.
#
# @param path
#   The path to the chaos.properties file on disk. Required.
#
# @param owner
#   The user that should own the chaos.properties file. This user is *not*
#   created by this module and should be managed elsewhere. Required.
#
# @param group
#   The group that should own the chaos.properties file. This group is
#   *not* created by this module and should be managed elsewhere. Required.
#
# @param mode
#   The mode of the chaos.properties file. Passed to the `file` resource.
#
# @param simianarmy_chaos_asg_enabled
#   Java property `simianarmy.chaos.ASG.enabled`
#
# @param simianarmy_chaos_asg_max_terminations_per_day
#   Java property `simianarmy.chaos.ASG.maxTerminationsPerDay`
#
# @param simianarmy_chaos_asg_probability
#   Java property `simianarmy.chaos.ASG.probability`
#
# @param simianarmy_chaos_asg_tag_key
#   Java property `simianarmy.chaos.ASGtag.key`
#
# @param simianarmy_chaos_asg_tag_value
#   Java property `simianarmy.chaos.ASGtag.value`
#
# @param simianarmy_chaos_blockallnetworktraffic_enabled
#   Java property `simianarmy.chaos.blockallnetworktraffic.enabled`
#
# @param simianarmy_chaos_burncpu_enabled
#   Java property `simianarmy.chaos.burncpu.enabled`
#
# @param simianarmy_chaos_burnio_enabled
#   Java property `simianarmy.chaos.burnio.enabled`
#
# @param simianarmy_chaos_burnmoney
#   Java property `simianarmy.chaos.burnmoney`
#
# @param simianarmy_chaos_detachvolumes_enabled
#   Java property `simianarmy.chaos.detachvolumes.enabled`
#
# @param simianarmy_chaos_enabled
#   Java property `simianarmy.chaos.enabled`
#
# @param simianarmy_chaos_faildns_enabled
#   Java property `simianarmy.chaos.faildns.enabled`
#
# @param simianarmy_chaos_faildynamodb_enabled
#   Java property `simianarmy.chaos.faildynamodb.enabled`
#
# @param simianarmy_chaos_failec2_enabled
#   Java property `simianarmy.chaos.failec2.enabled`
#
# @param simianarmy_chaos_fails3_enabled
#   Java property `simianarmy.chaos.fails3.enabled`
#
# @param simianarmy_chaos_filldisk_enabled
#   Java property `simianarmy.chaos.filldisk.enabled`
#
# @param simianarmy_chaos_killprocesses_enabled
#   Java property `simianarmy.chaos.killprocesses.enabled`
#
# @param simianarmy_chaos_leashed
#   Java property `simianarmy.chaos.leashed`
#
# @param simianarmy_chaos_mandatory_termination_default_probability
#   Java property `simianarmy.chaos.mandatoryTermination.defaultProbability`
#
# @param simianarmy_chaos_mandatory_termination_enabled
#   Java property `simianarmy.chaos.mandatoryTermination.enabled`
#
# @param simianarmy_chaos_mandatory_termination_window_in_days
#   Java property `simianarmy.chaos.mandatoryTermination.windowInDays`
#
# @param simianarmy_chaos_networkcorruption_enabled
#   Java property `simianarmy.chaos.networkcorruption.enabled`
#
# @param simianarmy_chaos_networklatency_enabled
#   Java property `simianarmy.chaos.networklatency.enabled`
#
# @param simianarmy_chaos_networkloss_enabled
#   Java property `simianarmy.chaos.networkloss.enabled`
#
# @param simianarmy_chaos_notification_body_prefix
#   Java property `simianarmy.chaos.notification.body.prefix`
#
# @param simianarmy_chaos_notification_body_suffix
#   Java property `simianarmy.chaos.notification.body.suffix`
#
# @param simianarmy_chaos_notification_global_enabled
#   Java property `simianarmy.chaos.notification.global.enabled`
#
# @param simianarmy_chaos_notification_global_receiver_email
#   Java property `simianarmy.chaos.notification.global.receiverEmail`
#
# @param simianarmy_chaos_notification_source_email
#   Java property `simianarmy.chaos.notification.sourceEmail`
#
# @param simianarmy_chaos_notification_subject_is_body
#   Java property `simianarmy.chaos.notification.subject.isBody`
#
# @param simianarmy_chaos_notification_subject_prefix
#   Java property `simianarmy.chaos.notification.subject.prefix`
#
# @param simianarmy_chaos_notification_subject_suffix
#   Java property `simianarmy.chaos.notification.subject.suffix`
#
# @param simianarmy_chaos_nullroute_enabled
#   Java property `simianarmy.chaos.nullroute.enabled`
#
# @param simianarmy_chaos_shutdowninstance_enabled
#   Java property `simianarmy.chaos.shutdowninstance.enabled`
#
# @param simianarmy_client_chaos_class
#   Java property `simianarmy.client.chaos.class`
#
#
# Copyright © 2017-2019 Shine Solutions Group, unless otherwise noted.
#
class simianarmy::chaos_properties (
  String $path,
  String $owner,
  String $group,
  String $mode,

  Variant[String, Undef] $simianarmy_chaos_asg_enabled = undef,
  Variant[String, Undef] $simianarmy_chaos_asg_max_terminations_per_day = undef,
  Variant[String, Undef] $simianarmy_chaos_asg_probability = undef,
  Variant[String, Undef] $simianarmy_chaos_asg_tag_key = undef,
  Variant[String, Undef] $simianarmy_chaos_asg_tag_value = undef,
  Variant[String, Undef] $simianarmy_chaos_blockallnetworktraffic_enabled = undef,
  Variant[String, Undef] $simianarmy_chaos_burncpu_enabled = undef,
  Variant[String, Undef] $simianarmy_chaos_burnio_enabled = undef,
  Variant[String, Undef] $simianarmy_chaos_burnmoney = undef,
  Variant[String, Undef] $simianarmy_chaos_detachvolumes_enabled = undef,
  Variant[String, Undef] $simianarmy_chaos_enabled = undef,
  Variant[String, Undef] $simianarmy_chaos_faildns_enabled = undef,
  Variant[String, Undef] $simianarmy_chaos_faildynamodb_enabled = undef,
  Variant[String, Undef] $simianarmy_chaos_failec2_enabled = undef,
  Variant[String, Undef] $simianarmy_chaos_fails3_enabled = undef,
  Variant[String, Undef] $simianarmy_chaos_filldisk_enabled = undef,
  Variant[String, Undef] $simianarmy_chaos_killprocesses_enabled = undef,
  Variant[String, Undef] $simianarmy_chaos_leashed = undef,
  Variant[String, Undef] $simianarmy_chaos_mandatory_termination_default_probability = undef,
  Variant[String, Undef] $simianarmy_chaos_mandatory_termination_enabled = undef,
  Variant[String, Undef] $simianarmy_chaos_mandatory_termination_window_in_days = undef,
  Variant[String, Undef] $simianarmy_chaos_networkcorruption_enabled = undef,
  Variant[String, Undef] $simianarmy_chaos_networklatency_enabled = undef,
  Variant[String, Undef] $simianarmy_chaos_networkloss_enabled = undef,
  Variant[String, Undef] $simianarmy_chaos_notification_body_prefix = undef,
  Variant[String, Undef] $simianarmy_chaos_notification_body_suffix = undef,
  Variant[String, Undef] $simianarmy_chaos_notification_global_enabled = undef,
  Variant[String, Undef] $simianarmy_chaos_notification_global_receiver_email = undef,
  Variant[String, Undef] $simianarmy_chaos_notification_source_email = undef,
  Variant[String, Undef] $simianarmy_chaos_notification_subject_is_body = undef,
  Variant[String, Undef] $simianarmy_chaos_notification_subject_prefix = undef,
  Variant[String, Undef] $simianarmy_chaos_notification_subject_suffix = undef,
  Variant[String, Undef] $simianarmy_chaos_nullroute_enabled = undef,
  Variant[String, Undef] $simianarmy_chaos_shutdowninstance_enabled = undef,
  Variant[String, Undef] $simianarmy_client_chaos_class = undef,

) {
  file { $path:
    ensure  => file,
    owner   => $owner,
    group   => $group,
    mode    => $mode,
    content => template('simianarmy/chaos_properties.erb'),
  }
}

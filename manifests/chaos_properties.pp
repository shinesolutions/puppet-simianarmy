# == Class: simianarmy::chaos_properties
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
# [*simianarmy_chaos_blockallnetworktraffic_enabled*]
#   Java property `simianarmy.chaos.blockallnetworktraffic.enabled`
#
# [*simianarmy_chaos_burncpu_enabled*]
#   Java property `simianarmy.chaos.burncpu.enabled`
#
# [*simianarmy_chaos_burnio_enabled*]
#   Java property `simianarmy.chaos.burnio.enabled`
#
# [*simianarmy_chaos_burnmoney*]
#   Java property `simianarmy.chaos.burnmoney`
#
# [*simianarmy_chaos_detachvolumes_enabled*]
#   Java property `simianarmy.chaos.detachvolumes.enabled`
#
# [*simianarmy_chaos_enabled*]
#   Java property `simianarmy.chaos.enabled`
#
# [*simianarmy_chaos_faildns_enabled*]
#   Java property `simianarmy.chaos.faildns.enabled`
#
# [*simianarmy_chaos_faildynamodb_enabled*]
#   Java property `simianarmy.chaos.faildynamodb.enabled`
#
# [*simianarmy_chaos_failec2_enabled*]
#   Java property `simianarmy.chaos.failec2.enabled`
#
# [*simianarmy_chaos_fails3_enabled*]
#   Java property `simianarmy.chaos.fails3.enabled`
#
# [*simianarmy_chaos_filldisk_enabled*]
#   Java property `simianarmy.chaos.filldisk.enabled`
#
# [*simianarmy_chaos_killprocesses_enabled*]
#   Java property `simianarmy.chaos.killprocesses.enabled`
#
# [*simianarmy_chaos_leashed*]
#   Java property `simianarmy.chaos.leashed`
#
# [*simianarmy_chaos_mandatory_termination_default_probability*]
#   Java property `simianarmy.chaos.mandatoryTermination.defaultProbability`
#
# [*simianarmy_chaos_mandatory_termination_enabled*]
#   Java property `simianarmy.chaos.mandatoryTermination.enabled`
#
# [*simianarmy_chaos_mandatory_termination_window_in_days*]
#   Java property `simianarmy.chaos.mandatoryTermination.windowInDays`
#
# [*simianarmy_chaos_networkcorruption_enabled*]
#   Java property `simianarmy.chaos.networkcorruption.enabled`
#
# [*simianarmy_chaos_networklatency_enabled*]
#   Java property `simianarmy.chaos.networklatency.enabled`
#
# [*simianarmy_chaos_networkloss_enabled*]
#   Java property `simianarmy.chaos.networkloss.enabled`
#
# [*simianarmy_chaos_notification_body_prefix*]
#   Java property `simianarmy.chaos.notification.body.prefix`
#
# [*simianarmy_chaos_notification_body_suffix*]
#   Java property `simianarmy.chaos.notification.body.suffix`
#
# [*simianarmy_chaos_notification_global_enabled*]
#   Java property `simianarmy.chaos.notification.global.enabled`
#
# [*simianarmy_chaos_notification_global_receiver_email*]
#   Java property `simianarmy.chaos.notification.global.receiverEmail`
#
# [*simianarmy_chaos_notification_source_email*]
#   Java property `simianarmy.chaos.notification.sourceEmail`
#
# [*simianarmy_chaos_notification_subject_is_body*]
#   Java property `simianarmy.chaos.notification.subject.isBody`
#
# [*simianarmy_chaos_notification_subject_prefix*]
#   Java property `simianarmy.chaos.notification.subject.prefix`
#
# [*simianarmy_chaos_notification_subject_suffix*]
#   Java property `simianarmy.chaos.notification.subject.suffix`
#
# [*simianarmy_chaos_nullroute_enabled*]
#   Java property `simianarmy.chaos.nullroute.enabled`
#
# [*simianarmy_chaos_shutdowninstance_enabled*]
#   Java property `simianarmy.chaos.shutdowninstance.enabled`
#
# [*simianarmy_client_chaos_class*]
#   Java property `simianarmy.client.chaos.class`
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
class simianarmy::chaos_properties (
  $path,
  $owner,
  $group,
  $mode,

  $simianarmy_chaos_blockallnetworktraffic_enabled = undef,
  $simianarmy_chaos_burncpu_enabled = undef,
  $simianarmy_chaos_burnio_enabled = undef,
  $simianarmy_chaos_burnmoney = undef,
  $simianarmy_chaos_detachvolumes_enabled = undef,
  $simianarmy_chaos_enabled = undef,
  $simianarmy_chaos_faildns_enabled = undef,
  $simianarmy_chaos_faildynamodb_enabled = undef,
  $simianarmy_chaos_failec2_enabled = undef,
  $simianarmy_chaos_fails3_enabled = undef,
  $simianarmy_chaos_filldisk_enabled = undef,
  $simianarmy_chaos_killprocesses_enabled = undef,
  $simianarmy_chaos_leashed = undef,
  $simianarmy_chaos_mandatory_termination_default_probability = undef,
  $simianarmy_chaos_mandatory_termination_enabled = undef,
  $simianarmy_chaos_mandatory_termination_window_in_days = undef,
  $simianarmy_chaos_networkcorruption_enabled = undef,
  $simianarmy_chaos_networklatency_enabled = undef,
  $simianarmy_chaos_networkloss_enabled = undef,
  $simianarmy_chaos_notification_body_prefix = undef,
  $simianarmy_chaos_notification_body_suffix = undef,
  $simianarmy_chaos_notification_global_enabled = undef,
  $simianarmy_chaos_notification_global_receiver_email = undef,
  $simianarmy_chaos_notification_source_email = undef,
  $simianarmy_chaos_notification_subject_is_body = undef,
  $simianarmy_chaos_notification_subject_prefix = undef,
  $simianarmy_chaos_notification_subject_suffix = undef,
  $simianarmy_chaos_nullroute_enabled = undef,
  $simianarmy_chaos_shutdowninstance_enabled = undef,
  $simianarmy_client_chaos_class = undef,

) {
  file { $path:
    ensure  => file,
    owner   => $owner,
    group   => $group,
    mode    => $mode,
    content => template('simianarmy/chaos_properties.erb'),
  }
}

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
# [*simianarmy_chaos_asg_enabled*]
#   Java property `simianarmy.chaos.ASG.enabled`
#
# [*simianarmy_chaos_asg_max_terminations_per_day*]
#   Java property `simianarmy.chaos.ASG.maxTerminationsPerDay`
#
# [*simianarmy_chaos_asg_probability*]
#   Java property `simianarmy.chaos.ASG.probability`
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
# [*simianarmy_chaos_nullroute_enabled*]
#   Java property `simianarmy.chaos.nullroute.enabled`
#
# [*simianarmy_chaos_shutdowninstance_enabled*]
#   Java property `simianarmy.chaos.shutdowninstance.enabled`
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

  $simianarmy_chaos_asg_enabled = undef,
  $simianarmy_chaos_asg_max_terminations_per_day = undef,
  $simianarmy_chaos_asg_probability = undef,
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
  $simianarmy_chaos_nullroute_enabled = undef,
  $simianarmy_chaos_shutdowninstance_enabled = undef,

) {
  file { $path:
    ensure  => file,
    owner   => $owner,
    group   => $group,
    mode    => $mode,
    content => template('simianarmy/chaos_properties.erb'),
  }
}

# == Class: simianarmy::conformity_properties
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
# [*simianarmy_conformity_eureka_enabled*]
#   Java property `simianarmy.conformity.Eureka.enabled`
#
# [*simianarmy_conformity_enabled*]
#   Java property `simianarmy.conformity.enabled`
#
# [*simianarmy_conformity_leashed*]
#   Java property `simianarmy.conformity.leashed`
#
# [*simianarmy_conformity_notification_close_hour*]
#   Java property `simianarmy.conformity.notification.closeHour`
#
# [*simianarmy_conformity_notification_default_email*]
#   Java property `simianarmy.conformity.notification.defaultEmail`
#
# [*simianarmy_conformity_notification_open_hour*]
#   Java property `simianarmy.conformity.notification.openHour`
#
# [*simianarmy_conformity_notification_source_email*]
#   Java property `simianarmy.conformity.notification.sourceEmail`
#
# [*simianarmy_conformity_rule_instance_has_health_check_url_enabled*]
#   Java property `simianarmy.conformity.rule.InstanceHasHealthCheckUrl.enabled`
#
# [*simianarmy_conformity_rule_instance_has_status_url_enabled*]
#   Java property `simianarmy.conformity.rule.InstanceHasStatusUrl.enabled`
#
# [*simianarmy_conformity_rule_instance_in_security_group_enabled*]
#   Java property `simianarmy.conformity.rule.InstanceInSecurityGroup.enabled`
#
# [*simianarmy_conformity_rule_instance_in_security_group_required_security_groups*]
#   Java property `simianarmy.conformity.rule.InstanceInSecurityGroup.requiredSecurityGroups`
#
# [*simianarmy_conformity_rule_instance_is_healthy_in_eureka_enabled*]
#   Java property `simianarmy.conformity.rule.InstanceIsHealthyInEureka.enabled`
#
# [*simianarmy_conformity_rule_instance_too_old_enabled*]
#   Java property `simianarmy.conformity.rule.InstanceTooOld.enabled`
#
# [*simianarmy_conformity_rule_instance_too_old_instance_age_threshold*]
#   Java property `simianarmy.conformity.rule.InstanceTooOld.instanceAgeThreshold`
#
# [*simianarmy_conformity_rule_same_zones_in_elb_and_asg_enabled*]
#   Java property `simianarmy.conformity.rule.SameZonesInElbAndAsg.enabled`
#
# [*simianarmy_conformity_sdb_domain*]
#   Java property `simianarmy.conformity.sdb.domain`
#
# [*simianarmy_conformity_summary_email_to*]
#   Java property `simianarmy.conformity.summaryEmail.to`
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
class simianarmy::conformity_properties (
  $path,
  $owner,
  $group,
  $mode,

  $simianarmy_calendar_close_hour = undef,
  $simianarmy_calendar_open_hour = undef,
  $simianarmy_calendar_timezone = undef,
  $simianarmy_conformity_eureka_enabled = undef,
  $simianarmy_conformity_enabled = undef,
  $simianarmy_conformity_leashed = undef,
  $simianarmy_conformity_notification_close_hour = undef,
  $simianarmy_conformity_notification_default_email = undef,
  $simianarmy_conformity_notification_open_hour = undef,
  $simianarmy_conformity_notification_source_email = undef,
  $simianarmy_conformity_rule_instance_has_health_check_url_enabled = undef,
  $simianarmy_conformity_rule_instance_has_status_url_enabled = undef,
  $simianarmy_conformity_rule_instance_in_security_group_enabled = undef,
  $simianarmy_conformity_rule_instance_in_security_group_required_security_groups = undef,
  $simianarmy_conformity_rule_instance_is_healthy_in_eureka_enabled = undef,
  $simianarmy_conformity_rule_instance_too_old_enabled = undef,
  $simianarmy_conformity_rule_instance_too_old_instance_age_threshold = undef,
  $simianarmy_conformity_rule_same_zones_in_elb_and_asg_enabled = undef,
  $simianarmy_conformity_sdb_domain = undef,
  $simianarmy_conformity_summary_email_to = undef,
  $simianarmy_scheduler_frequency = undef,
  $simianarmy_scheduler_frequency_unit = undef,
  $simianarmy_scheduler_threads = undef,

) {
  file { $path:
    ensure  => file,
    owner   => $owner,
    group   => $group,
    mode    => $mode,
    content => template('simianarmy/conformity_properties.erb'),
  }
}

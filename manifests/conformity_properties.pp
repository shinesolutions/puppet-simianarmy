# @summary
#   Write the `conformity.properties` file.
#
#  This class writes the `conformity.properties` file for the Netflix Chaos
#  Monkey.  It is auto-generated and should not be modified by hand.
#  Documentation for each of the properties can be found in the example
#  `conformity.properties` from which it is generated. (see below)
#
#  _Note:_ This is an internal class that shouldn't be used directly. It is
#  included by the `simianarmy` class. You can change values for it's
#  parameters using Hiera.
#
# @see https://github.com/Netflix/SimianArmy/blob/master/src/main/resources/conformity.properties
#   The example `conformity.properties` file.
#
# @param path
#   The path to the conformity.properties file on disk. Required.
#
# @param owner
#   The user that should own the conformity.properties file. This user is *not*
#   created by this module and should be managed elsewhere. Required.
#
# @param group
#   The group that should own the conformity.properties file. This group is
#   *not* created by this module and should be managed elsewhere. Required.
#
# @param mode
#   The mode of the conformity.properties file. Passed to the `file` resource.
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
# @param simianarmy_conformity_eureka_enabled
#   Java property `simianarmy.conformity.Eureka.enabled`
#
# @param simianarmy_conformity_cluster_foo_excluded_rules
#   Java property `simianarmy.conformity.cluster.foo.excludedRules`
#
# @param simianarmy_conformity_cluster_foo_opted_out
#   Java property `simianarmy.conformity.cluster.foo.optedOut`
#
# @param simianarmy_conformity_cluster_foo_owner_email
#   Java property `simianarmy.conformity.cluster.foo.ownerEmail`
#
# @param simianarmy_conformity_enabled
#   Java property `simianarmy.conformity.enabled`
#
# @param simianarmy_conformity_leashed
#   Java property `simianarmy.conformity.leashed`
#
# @param simianarmy_conformity_notification_close_hour
#   Java property `simianarmy.conformity.notification.closeHour`
#
# @param simianarmy_conformity_notification_default_email
#   Java property `simianarmy.conformity.notification.defaultEmail`
#
# @param simianarmy_conformity_notification_open_hour
#   Java property `simianarmy.conformity.notification.openHour`
#
# @param simianarmy_conformity_notification_source_email
#   Java property `simianarmy.conformity.notification.sourceEmail`
#
# @param simianarmy_conformity_rule_instance_has_health_check_url_enabled
#   Java property `simianarmy.conformity.rule.InstanceHasHealthCheckUrl.enabled`
#
# @param simianarmy_conformity_rule_instance_has_status_url_enabled
#   Java property `simianarmy.conformity.rule.InstanceHasStatusUrl.enabled`
#
# @param simianarmy_conformity_rule_instance_in_security_group_enabled
#   Java property `simianarmy.conformity.rule.InstanceInSecurityGroup.enabled`
#
# @param simianarmy_conformity_rule_instance_in_security_group_required_security_groups
#   Java property `simianarmy.conformity.rule.InstanceInSecurityGroup.requiredSecurityGroups`
#
# @param simianarmy_conformity_rule_instance_is_healthy_in_eureka_enabled
#   Java property `simianarmy.conformity.rule.InstanceIsHealthyInEureka.enabled`
#
# @param simianarmy_conformity_rule_instance_too_old_enabled
#   Java property `simianarmy.conformity.rule.InstanceTooOld.enabled`
#
# @param simianarmy_conformity_rule_instance_too_old_instance_age_threshold
#   Java property `simianarmy.conformity.rule.InstanceTooOld.instanceAgeThreshold`
#
# @param simianarmy_conformity_rule_same_zones_in_elb_and_asg_enabled
#   Java property `simianarmy.conformity.rule.SameZonesInElbAndAsg.enabled`
#
# @param simianarmy_conformity_sdb_domain
#   Java property `simianarmy.conformity.sdb.domain`
#
# @param simianarmy_conformity_summary_email_to
#   Java property `simianarmy.conformity.summaryEmail.to`
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
#
# Copyright © 2017 Shine Solutions Group, unless otherwise noted.
#
class simianarmy::conformity_properties (
  String $path,
  String $owner,
  String $group,
  String $mode,

  Variant[String, Undef] $simianarmy_calendar_close_hour = undef,
  Variant[String, Undef] $simianarmy_calendar_is_monkey_time = undef,
  Variant[String, Undef] $simianarmy_calendar_open_hour = undef,
  Variant[String, Undef] $simianarmy_calendar_timezone = undef,
  Variant[String, Undef] $simianarmy_conformity_eureka_enabled = undef,
  Variant[String, Undef] $simianarmy_conformity_cluster_foo_excluded_rules = undef,
  Variant[String, Undef] $simianarmy_conformity_cluster_foo_opted_out = undef,
  Variant[String, Undef] $simianarmy_conformity_cluster_foo_owner_email = undef,
  Variant[String, Undef] $simianarmy_conformity_enabled = undef,
  Variant[String, Undef] $simianarmy_conformity_leashed = undef,
  Variant[String, Undef] $simianarmy_conformity_notification_close_hour = undef,
  Variant[String, Undef] $simianarmy_conformity_notification_default_email = undef,
  Variant[String, Undef] $simianarmy_conformity_notification_open_hour = undef,
  Variant[String, Undef] $simianarmy_conformity_notification_source_email = undef,
  Variant[String, Undef] $simianarmy_conformity_rule_instance_has_health_check_url_enabled = undef,
  Variant[String, Undef] $simianarmy_conformity_rule_instance_has_status_url_enabled = undef,
  Variant[String, Undef] $simianarmy_conformity_rule_instance_in_security_group_enabled = undef,
  Variant[String, Undef] $simianarmy_conformity_rule_instance_in_security_group_required_security_groups = undef,
  Variant[String, Undef] $simianarmy_conformity_rule_instance_is_healthy_in_eureka_enabled = undef,
  Variant[String, Undef] $simianarmy_conformity_rule_instance_too_old_enabled = undef,
  Variant[String, Undef] $simianarmy_conformity_rule_instance_too_old_instance_age_threshold = undef,
  Variant[String, Undef] $simianarmy_conformity_rule_same_zones_in_elb_and_asg_enabled = undef,
  Variant[String, Undef] $simianarmy_conformity_sdb_domain = undef,
  Variant[String, Undef] $simianarmy_conformity_summary_email_to = undef,
  Variant[String, Undef] $simianarmy_scheduler_frequency = undef,
  Variant[String, Undef] $simianarmy_scheduler_frequency_unit = undef,
  Variant[String, Undef] $simianarmy_scheduler_threads = undef,

) {
  file { $path:
    ensure  => file,
    owner   => $owner,
    group   => $group,
    mode    => $mode,
    content => template('simianarmy/conformity_properties.erb'),
  }
}

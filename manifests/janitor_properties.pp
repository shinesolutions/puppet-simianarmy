# @summary
#   Write the `janitor.properties` file.
#
#  This class writes the `janitor.properties` file for the Netflix Chaos
#  Monkey. It is auto-generated and should not be modified by hand.
#  Documentation for each of the properties can be found in the example
#  `janitor.properties` from which it is generated. (see below)
#
#  _Note:_ This is an internal class that shouldn't be used directly. It is
#  included by the `simianarmy` class. You can change values for it's
#  parameters using Hiera.
#
# @see https://github.com/Netflix/SimianArmy/blob/master/src/main/resources/janitor.properties
#   The example `janitor.properties` file.
#
# @param path
#   The path to the janitor.properties file on disk. Required.
#
# @param owner
#   The user that should own the janitor.properties file. This user is *not*
#   created by this module and should be managed elsewhere. Required.
#
# @param group
#   The group that should own the janitor.properties file. This group is
#   *not* created by this module and should be managed elsewhere. Required.
#
# @param mode
#   The mode of the janitor.properties file. Passed to the `file` resource.
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
# @param simianarmy_janitor_eureka_enabled
#   Java property `simianarmy.janitor.Eureka.enabled`
#
# @param simianarmy_janitor_edda_client_retries
#   Java property `simianarmy.janitor.edda.client.retries`
#
# @param simianarmy_janitor_edda_client_retry_interval
#   Java property `simianarmy.janitor.edda.client.retryInterval`
#
# @param simianarmy_janitor_edda_client_timeout
#   Java property `simianarmy.janitor.edda.client.timeout`
#
# @param simianarmy_janitor_edda_enabled
#   Java property `simianarmy.janitor.edda.enabled`
#
# @param simianarmy_janitor_edda_endpoint_us_east_1
#   Java property `simianarmy.janitor.edda.endpoint.us-east-1`
#
# @param simianarmy_janitor_enabled
#   Java property `simianarmy.janitor.enabled`
#
# @param simianarmy_janitor_enabled_resources
#   Java property `simianarmy.janitor.enabledResources`
#
# @param simianarmy_janitor_image_crawler_look_back_days
#   Java property `simianarmy.janitor.image.crawler.lookBackDays`
#
# @param simianarmy_janitor_image_owner_id
#   Java property `simianarmy.janitor.image.ownerId`
#
# @param simianarmy_janitor_leashed
#   Java property `simianarmy.janitor.leashed`
#
# @param simianarmy_janitor_notification_days_before_termination
#   Java property `simianarmy.janitor.notification.daysBeforeTermination`
#
# @param simianarmy_janitor_notification_default_email
#   Java property `simianarmy.janitor.notification.defaultEmail`
#
# @param simianarmy_janitor_notification_owner_email_domain
#   Java property `simianarmy.janitor.notification.ownerEmailDomain`
#
# @param simianarmy_janitor_notification_source_email
#   Java property `simianarmy.janitor.notification.sourceEmail`
#
# @param simianarmy_janitor_resources_sdb_domain
#   Java property `simianarmy.janitor.resources.sdb.domain`
#
# @param simianarmy_janitor_rule_delete_on_termination_rule_enabled
#   Java property `simianarmy.janitor.rule.deleteOnTerminationRule.enabled`
#
# @param simianarmy_janitor_rule_delete_on_termination_rule_retention_days
#   Java property `simianarmy.janitor.rule.deleteOnTerminationRule.retentionDays`
#
# @param simianarmy_janitor_rule_no_generated_ami_rule_age_threshold
#   Java property `simianarmy.janitor.rule.noGeneratedAMIRule.ageThreshold`
#
# @param simianarmy_janitor_rule_no_generated_ami_rule_enabled
#   Java property `simianarmy.janitor.rule.noGeneratedAMIRule.enabled`
#
# @param simianarmy_janitor_rule_no_generated_ami_rule_retention_days
#   Java property `simianarmy.janitor.rule.noGeneratedAMIRule.retentionDays`
#
# @param simianarmy_janitor_rule_old_detached_volume_rule_detach_days_threshold
#   Java property `simianarmy.janitor.rule.oldDetachedVolumeRule.detachDaysThreshold`
#
# @param simianarmy_janitor_rule_old_detached_volume_rule_enabled
#   Java property `simianarmy.janitor.rule.oldDetachedVolumeRule.enabled`
#
# @param simianarmy_janitor_rule_old_detached_volume_rule_retention_days
#   Java property `simianarmy.janitor.rule.oldDetachedVolumeRule.retentionDays`
#
# @param simianarmy_janitor_rule_old_empty_asg_rule_enabled
#   Java property `simianarmy.janitor.rule.oldEmptyASGRule.enabled`
#
# @param simianarmy_janitor_rule_old_empty_asg_rule_launch_config_age_threshold
#   Java property `simianarmy.janitor.rule.oldEmptyASGRule.launchConfigAgeThreshold`
#
# @param simianarmy_janitor_rule_old_empty_asg_rule_retention_days
#   Java property `simianarmy.janitor.rule.oldEmptyASGRule.retentionDays`
#
# @param simianarmy_janitor_rule_old_unused_launch_config_rule_age_threshold
#   Java property `simianarmy.janitor.rule.oldUnusedLaunchConfigRule.ageThreshold`
#
# @param simianarmy_janitor_rule_old_unused_launch_config_rule_enabled
#   Java property `simianarmy.janitor.rule.oldUnusedLaunchConfigRule.enabled`
#
# @param simianarmy_janitor_rule_old_unused_launch_config_rule_retention_days
#   Java property `simianarmy.janitor.rule.oldUnusedLaunchConfigRule.retentionDays`
#
# @param simianarmy_janitor_rule_orphaned_instance_rule_enabled
#   Java property `simianarmy.janitor.rule.orphanedInstanceRule.enabled`
#
# @param simianarmy_janitor_rule_orphaned_instance_rule_instance_age_threshold
#   Java property `simianarmy.janitor.rule.orphanedInstanceRule.instanceAgeThreshold`
#
# @param simianarmy_janitor_rule_orphaned_instance_rule_opsworks_parentage
#   Java property `simianarmy.janitor.rule.orphanedInstanceRule.opsworks.parentage`
#
# @param simianarmy_janitor_rule_orphaned_instance_rule_retention_days_with_owner
#   Java property `simianarmy.janitor.rule.orphanedInstanceRule.retentionDaysWithOwner`
#
# @param simianarmy_janitor_rule_orphaned_instance_rule_retention_days_without_owner
#   Java property `simianarmy.janitor.rule.orphanedInstanceRule.retentionDaysWithoutOwner`
#
# @param simianarmy_janitor_rule_suspended_asg_rule_enabled
#   Java property `simianarmy.janitor.rule.suspendedASGRule.enabled`
#
# @param simianarmy_janitor_rule_suspended_asg_rule_retention_days
#   Java property `simianarmy.janitor.rule.suspendedASGRule.retentionDays`
#
# @param simianarmy_janitor_rule_suspended_asg_rule_suspension_age_threshold
#   Java property `simianarmy.janitor.rule.suspendedASGRule.suspensionAgeThreshold`
#
# @param simianarmy_janitor_rule_untagged_rule_enabled
#   Java property `simianarmy.janitor.rule.untaggedRule.enabled`
#
# @param simianarmy_janitor_rule_untagged_rule_required_tags
#   Java property `simianarmy.janitor.rule.untaggedRule.requiredTags`
#
# @param simianarmy_janitor_rule_untagged_rule_resources
#   Java property `simianarmy.janitor.rule.untaggedRule.resources`
#
# @param simianarmy_janitor_rule_untagged_rule_retention_days_with_owner
#   Java property `simianarmy.janitor.rule.untaggedRule.retentionDaysWithOwner`
#
# @param simianarmy_janitor_rule_untagged_rule_retention_days_without_owner
#   Java property `simianarmy.janitor.rule.untaggedRule.retentionDaysWithoutOwner`
#
# @param simianarmy_janitor_rule_unused_image_rule_enabled
#   Java property `simianarmy.janitor.rule.unusedImageRule.enabled`
#
# @param simianarmy_janitor_rule_unused_image_rule_last_reference_days_threshold
#   Java property `simianarmy.janitor.rule.unusedImageRule.lastReferenceDaysThreshold`
#
# @param simianarmy_janitor_rule_unused_image_rule_retention_days
#   Java property `simianarmy.janitor.rule.unusedImageRule.retentionDays`
#
# @param simianarmy_janitor_snapshots_owner_id
#   Java property `simianarmy.janitor.snapshots.ownerId`
#
# @param simianarmy_janitor_summary_email_to
#   Java property `simianarmy.janitor.summaryEmail.to`
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
# Copyright © 2017-2019 Shine Solutions Group, unless otherwise noted.
#
class simianarmy::janitor_properties (
  String $path,
  String $owner,
  String $group,
  String $mode,

  Variant[String, Undef] $simianarmy_calendar_close_hour = undef,
  Variant[String, Undef] $simianarmy_calendar_is_monkey_time = undef,
  Variant[String, Undef] $simianarmy_calendar_open_hour = undef,
  Variant[String, Undef] $simianarmy_calendar_timezone = undef,
  Variant[String, Undef] $simianarmy_janitor_eureka_enabled = undef,
  Variant[String, Undef] $simianarmy_janitor_edda_client_retries = undef,
  Variant[String, Undef] $simianarmy_janitor_edda_client_retry_interval = undef,
  Variant[String, Undef] $simianarmy_janitor_edda_client_timeout = undef,
  Variant[String, Undef] $simianarmy_janitor_edda_enabled = undef,
  Variant[String, Undef] $simianarmy_janitor_edda_endpoint_us_east_1 = undef,
  Variant[String, Undef] $simianarmy_janitor_enabled = undef,
  Variant[String, Undef] $simianarmy_janitor_enabled_resources = undef,
  Variant[String, Undef] $simianarmy_janitor_image_crawler_look_back_days = undef,
  Variant[String, Undef] $simianarmy_janitor_image_owner_id = undef,
  Variant[String, Undef] $simianarmy_janitor_leashed = undef,
  Variant[String, Undef] $simianarmy_janitor_notification_days_before_termination = undef,
  Variant[String, Undef] $simianarmy_janitor_notification_default_email = undef,
  Variant[String, Undef] $simianarmy_janitor_notification_owner_email_domain = undef,
  Variant[String, Undef] $simianarmy_janitor_notification_source_email = undef,
  Variant[String, Undef] $simianarmy_janitor_resources_sdb_domain = undef,
  Variant[String, Undef] $simianarmy_janitor_rule_delete_on_termination_rule_enabled = undef,
  Variant[String, Undef] $simianarmy_janitor_rule_delete_on_termination_rule_retention_days = undef,
  Variant[String, Undef] $simianarmy_janitor_rule_no_generated_ami_rule_age_threshold = undef,
  Variant[String, Undef] $simianarmy_janitor_rule_no_generated_ami_rule_enabled = undef,
  Variant[String, Undef] $simianarmy_janitor_rule_no_generated_ami_rule_retention_days = undef,
  Variant[String, Undef] $simianarmy_janitor_rule_old_detached_volume_rule_detach_days_threshold = undef,
  Variant[String, Undef] $simianarmy_janitor_rule_old_detached_volume_rule_enabled = undef,
  Variant[String, Undef] $simianarmy_janitor_rule_old_detached_volume_rule_retention_days = undef,
  Variant[String, Undef] $simianarmy_janitor_rule_old_empty_asg_rule_enabled = undef,
  Variant[String, Undef] $simianarmy_janitor_rule_old_empty_asg_rule_launch_config_age_threshold = undef,
  Variant[String, Undef] $simianarmy_janitor_rule_old_empty_asg_rule_retention_days = undef,
  Variant[String, Undef] $simianarmy_janitor_rule_old_unused_launch_config_rule_age_threshold = undef,
  Variant[String, Undef] $simianarmy_janitor_rule_old_unused_launch_config_rule_enabled = undef,
  Variant[String, Undef] $simianarmy_janitor_rule_old_unused_launch_config_rule_retention_days = undef,
  Variant[String, Undef] $simianarmy_janitor_rule_orphaned_instance_rule_enabled = undef,
  Variant[String, Undef] $simianarmy_janitor_rule_orphaned_instance_rule_instance_age_threshold = undef,
  Variant[String, Undef] $simianarmy_janitor_rule_orphaned_instance_rule_opsworks_parentage = undef,
  Variant[String, Undef] $simianarmy_janitor_rule_orphaned_instance_rule_retention_days_with_owner = undef,
  Variant[String, Undef] $simianarmy_janitor_rule_orphaned_instance_rule_retention_days_without_owner = undef,
  Variant[String, Undef] $simianarmy_janitor_rule_suspended_asg_rule_enabled = undef,
  Variant[String, Undef] $simianarmy_janitor_rule_suspended_asg_rule_retention_days = undef,
  Variant[String, Undef] $simianarmy_janitor_rule_suspended_asg_rule_suspension_age_threshold = undef,
  Variant[String, Undef] $simianarmy_janitor_rule_untagged_rule_enabled = undef,
  Variant[String, Undef] $simianarmy_janitor_rule_untagged_rule_required_tags = undef,
  Variant[String, Undef] $simianarmy_janitor_rule_untagged_rule_resources = undef,
  Variant[String, Undef] $simianarmy_janitor_rule_untagged_rule_retention_days_with_owner = undef,
  Variant[String, Undef] $simianarmy_janitor_rule_untagged_rule_retention_days_without_owner = undef,
  Variant[String, Undef] $simianarmy_janitor_rule_unused_image_rule_enabled = undef,
  Variant[String, Undef] $simianarmy_janitor_rule_unused_image_rule_last_reference_days_threshold = undef,
  Variant[String, Undef] $simianarmy_janitor_rule_unused_image_rule_retention_days = undef,
  Variant[String, Undef] $simianarmy_janitor_snapshots_owner_id = undef,
  Variant[String, Undef] $simianarmy_janitor_summary_email_to = undef,
  Variant[String, Undef] $simianarmy_scheduler_frequency = undef,
  Variant[String, Undef] $simianarmy_scheduler_frequency_unit = undef,
  Variant[String, Undef] $simianarmy_scheduler_threads = undef,

) {
  file { $path:
    ensure  => file,
    owner   => $owner,
    group   => $group,
    mode    => $mode,
    content => template('simianarmy/janitor_properties.erb'),
  }
}

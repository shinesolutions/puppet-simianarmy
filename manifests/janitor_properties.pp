# == Class: simianarmy::janitor_properties
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
# [*simianarmy_janitor_eureka_enabled*]
#   Java property `simianarmy.janitor.Eureka.enabled`
#
# [*simianarmy_janitor_enabled*]
#   Java property `simianarmy.janitor.enabled`
#
# [*simianarmy_janitor_enabled_resources*]
#   Java property `simianarmy.janitor.enabledResources`
#
# [*simianarmy_janitor_image_crawler_look_back_days*]
#   Java property `simianarmy.janitor.image.crawler.lookBackDays`
#
# [*simianarmy_janitor_leashed*]
#   Java property `simianarmy.janitor.leashed`
#
# [*simianarmy_janitor_notification_days_before_termination*]
#   Java property `simianarmy.janitor.notification.daysBeforeTermination`
#
# [*simianarmy_janitor_notification_default_email*]
#   Java property `simianarmy.janitor.notification.defaultEmail`
#
# [*simianarmy_janitor_notification_source_email*]
#   Java property `simianarmy.janitor.notification.sourceEmail`
#
# [*simianarmy_janitor_resources_sdb_domain*]
#   Java property `simianarmy.janitor.resources.sdb.domain`
#
# [*simianarmy_janitor_rule_delete_on_termination_rule_enabled*]
#   Java property `simianarmy.janitor.rule.deleteOnTerminationRule.enabled`
#
# [*simianarmy_janitor_rule_delete_on_termination_rule_retention_days*]
#   Java property `simianarmy.janitor.rule.deleteOnTerminationRule.retentionDays`
#
# [*simianarmy_janitor_rule_no_generated_ami_rule_age_threshold*]
#   Java property `simianarmy.janitor.rule.noGeneratedAMIRule.ageThreshold`
#
# [*simianarmy_janitor_rule_no_generated_ami_rule_enabled*]
#   Java property `simianarmy.janitor.rule.noGeneratedAMIRule.enabled`
#
# [*simianarmy_janitor_rule_no_generated_ami_rule_retention_days*]
#   Java property `simianarmy.janitor.rule.noGeneratedAMIRule.retentionDays`
#
# [*simianarmy_janitor_rule_old_detached_volume_rule_detach_days_threshold*]
#   Java property `simianarmy.janitor.rule.oldDetachedVolumeRule.detachDaysThreshold`
#
# [*simianarmy_janitor_rule_old_detached_volume_rule_enabled*]
#   Java property `simianarmy.janitor.rule.oldDetachedVolumeRule.enabled`
#
# [*simianarmy_janitor_rule_old_detached_volume_rule_retention_days*]
#   Java property `simianarmy.janitor.rule.oldDetachedVolumeRule.retentionDays`
#
# [*simianarmy_janitor_rule_old_empty_asg_rule_enabled*]
#   Java property `simianarmy.janitor.rule.oldEmptyASGRule.enabled`
#
# [*simianarmy_janitor_rule_old_empty_asg_rule_launch_config_age_threshold*]
#   Java property `simianarmy.janitor.rule.oldEmptyASGRule.launchConfigAgeThreshold`
#
# [*simianarmy_janitor_rule_old_empty_asg_rule_retention_days*]
#   Java property `simianarmy.janitor.rule.oldEmptyASGRule.retentionDays`
#
# [*simianarmy_janitor_rule_old_unused_launch_config_rule_age_threshold*]
#   Java property `simianarmy.janitor.rule.oldUnusedLaunchConfigRule.ageThreshold`
#
# [*simianarmy_janitor_rule_old_unused_launch_config_rule_enabled*]
#   Java property `simianarmy.janitor.rule.oldUnusedLaunchConfigRule.enabled`
#
# [*simianarmy_janitor_rule_old_unused_launch_config_rule_retention_days*]
#   Java property `simianarmy.janitor.rule.oldUnusedLaunchConfigRule.retentionDays`
#
# [*simianarmy_janitor_rule_orphaned_instance_rule_enabled*]
#   Java property `simianarmy.janitor.rule.orphanedInstanceRule.enabled`
#
# [*simianarmy_janitor_rule_orphaned_instance_rule_instance_age_threshold*]
#   Java property `simianarmy.janitor.rule.orphanedInstanceRule.instanceAgeThreshold`
#
# [*simianarmy_janitor_rule_orphaned_instance_rule_opsworks_parentage*]
#   Java property `simianarmy.janitor.rule.orphanedInstanceRule.opsworks.parentage`
#
# [*simianarmy_janitor_rule_orphaned_instance_rule_retention_days_with_owner*]
#   Java property `simianarmy.janitor.rule.orphanedInstanceRule.retentionDaysWithOwner`
#
# [*simianarmy_janitor_rule_orphaned_instance_rule_retention_days_without_owner*]
#   Java property `simianarmy.janitor.rule.orphanedInstanceRule.retentionDaysWithoutOwner`
#
# [*simianarmy_janitor_rule_suspended_asg_rule_enabled*]
#   Java property `simianarmy.janitor.rule.suspendedASGRule.enabled`
#
# [*simianarmy_janitor_rule_suspended_asg_rule_retention_days*]
#   Java property `simianarmy.janitor.rule.suspendedASGRule.retentionDays`
#
# [*simianarmy_janitor_rule_suspended_asg_rule_suspension_age_threshold*]
#   Java property `simianarmy.janitor.rule.suspendedASGRule.suspensionAgeThreshold`
#
# [*simianarmy_janitor_rule_untagged_rule_enabled*]
#   Java property `simianarmy.janitor.rule.untaggedRule.enabled`
#
# [*simianarmy_janitor_rule_untagged_rule_required_tags*]
#   Java property `simianarmy.janitor.rule.untaggedRule.requiredTags`
#
# [*simianarmy_janitor_rule_untagged_rule_resources*]
#   Java property `simianarmy.janitor.rule.untaggedRule.resources`
#
# [*simianarmy_janitor_rule_untagged_rule_retention_days_with_owner*]
#   Java property `simianarmy.janitor.rule.untaggedRule.retentionDaysWithOwner`
#
# [*simianarmy_janitor_rule_untagged_rule_retention_days_without_owner*]
#   Java property `simianarmy.janitor.rule.untaggedRule.retentionDaysWithoutOwner`
#
# [*simianarmy_janitor_rule_unused_image_rule_enabled*]
#   Java property `simianarmy.janitor.rule.unusedImageRule.enabled`
#
# [*simianarmy_janitor_rule_unused_image_rule_last_reference_days_threshold*]
#   Java property `simianarmy.janitor.rule.unusedImageRule.lastReferenceDaysThreshold`
#
# [*simianarmy_janitor_rule_unused_image_rule_retention_days*]
#   Java property `simianarmy.janitor.rule.unusedImageRule.retentionDays`
#
# [*simianarmy_janitor_summary_email_to*]
#   Java property `simianarmy.janitor.summaryEmail.to`
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
class simianarmy::janitor_properties (
  $path,
  $owner,
  $group,
  $mode,

  $simianarmy_calendar_close_hour = undef,
  $simianarmy_calendar_open_hour = undef,
  $simianarmy_calendar_timezone = undef,
  $simianarmy_janitor_eureka_enabled = undef,
  $simianarmy_janitor_enabled = undef,
  $simianarmy_janitor_enabled_resources = undef,
  $simianarmy_janitor_image_crawler_look_back_days = undef,
  $simianarmy_janitor_leashed = undef,
  $simianarmy_janitor_notification_days_before_termination = undef,
  $simianarmy_janitor_notification_default_email = undef,
  $simianarmy_janitor_notification_source_email = undef,
  $simianarmy_janitor_resources_sdb_domain = undef,
  $simianarmy_janitor_rule_delete_on_termination_rule_enabled = undef,
  $simianarmy_janitor_rule_delete_on_termination_rule_retention_days = undef,
  $simianarmy_janitor_rule_no_generated_ami_rule_age_threshold = undef,
  $simianarmy_janitor_rule_no_generated_ami_rule_enabled = undef,
  $simianarmy_janitor_rule_no_generated_ami_rule_retention_days = undef,
  $simianarmy_janitor_rule_old_detached_volume_rule_detach_days_threshold = undef,
  $simianarmy_janitor_rule_old_detached_volume_rule_enabled = undef,
  $simianarmy_janitor_rule_old_detached_volume_rule_retention_days = undef,
  $simianarmy_janitor_rule_old_empty_asg_rule_enabled = undef,
  $simianarmy_janitor_rule_old_empty_asg_rule_launch_config_age_threshold = undef,
  $simianarmy_janitor_rule_old_empty_asg_rule_retention_days = undef,
  $simianarmy_janitor_rule_old_unused_launch_config_rule_age_threshold = undef,
  $simianarmy_janitor_rule_old_unused_launch_config_rule_enabled = undef,
  $simianarmy_janitor_rule_old_unused_launch_config_rule_retention_days = undef,
  $simianarmy_janitor_rule_orphaned_instance_rule_enabled = undef,
  $simianarmy_janitor_rule_orphaned_instance_rule_instance_age_threshold = undef,
  $simianarmy_janitor_rule_orphaned_instance_rule_opsworks_parentage = undef,
  $simianarmy_janitor_rule_orphaned_instance_rule_retention_days_with_owner = undef,
  $simianarmy_janitor_rule_orphaned_instance_rule_retention_days_without_owner = undef,
  $simianarmy_janitor_rule_suspended_asg_rule_enabled = undef,
  $simianarmy_janitor_rule_suspended_asg_rule_retention_days = undef,
  $simianarmy_janitor_rule_suspended_asg_rule_suspension_age_threshold = undef,
  $simianarmy_janitor_rule_untagged_rule_enabled = undef,
  $simianarmy_janitor_rule_untagged_rule_required_tags = undef,
  $simianarmy_janitor_rule_untagged_rule_resources = undef,
  $simianarmy_janitor_rule_untagged_rule_retention_days_with_owner = undef,
  $simianarmy_janitor_rule_untagged_rule_retention_days_without_owner = undef,
  $simianarmy_janitor_rule_unused_image_rule_enabled = undef,
  $simianarmy_janitor_rule_unused_image_rule_last_reference_days_threshold = undef,
  $simianarmy_janitor_rule_unused_image_rule_retention_days = undef,
  $simianarmy_janitor_summary_email_to = undef,
  $simianarmy_scheduler_frequency = undef,
  $simianarmy_scheduler_frequency_unit = undef,
  $simianarmy_scheduler_threads = undef,

) {
  file { $path:
    ensure  => file,
    owner   => $owner,
    group   => $group,
    mode    => $mode,
    content => template('simianarmy/janitor_properties.erb'),
  }
}

require 'spec_helper'
describe 'simianarmy::janitor_properties' do
  context 'with defaults for all parameters' do
    it { is_expected.to contain_class('simianarmy::janitor_properties') }
  end
  context 'with simianarmy_calendar_close_hour => foo' do
    let(:params) { {:simianarmy_calendar_close_hour => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.calendar.closeHour = foo/) }
  end
  context 'with simianarmy_calendar_open_hour => foo' do
    let(:params) { {:simianarmy_calendar_open_hour => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.calendar.openHour = foo/) }
  end
  context 'with simianarmy_calendar_timezone => foo' do
    let(:params) { {:simianarmy_calendar_timezone => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.calendar.timezone = foo/) }
  end
  context 'with simianarmy_janitor_eureka_enabled => foo' do
    let(:params) { {:simianarmy_janitor_eureka_enabled => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.janitor.Eureka.enabled = foo/) }
  end
  context 'with simianarmy_janitor_enabled => foo' do
    let(:params) { {:simianarmy_janitor_enabled => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.janitor.enabled = foo/) }
  end
  context 'with simianarmy_janitor_enabled_resources => foo' do
    let(:params) { {:simianarmy_janitor_enabled_resources => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.janitor.enabledResources = foo/) }
  end
  context 'with simianarmy_janitor_image_crawler_look_back_days => foo' do
    let(:params) { {:simianarmy_janitor_image_crawler_look_back_days => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.janitor.image.crawler.lookBackDays = foo/) }
  end
  context 'with simianarmy_janitor_leashed => foo' do
    let(:params) { {:simianarmy_janitor_leashed => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.janitor.leashed = foo/) }
  end
  context 'with simianarmy_janitor_notification_days_before_termination => foo' do
    let(:params) { {:simianarmy_janitor_notification_days_before_termination => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.janitor.notification.daysBeforeTermination = foo/) }
  end
  context 'with simianarmy_janitor_notification_default_email => foo' do
    let(:params) { {:simianarmy_janitor_notification_default_email => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.janitor.notification.defaultEmail = foo/) }
  end
  context 'with simianarmy_janitor_notification_source_email => foo' do
    let(:params) { {:simianarmy_janitor_notification_source_email => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.janitor.notification.sourceEmail = foo/) }
  end
  context 'with simianarmy_janitor_resources_sdb_domain => foo' do
    let(:params) { {:simianarmy_janitor_resources_sdb_domain => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.janitor.resources.sdb.domain = foo/) }
  end
  context 'with simianarmy_janitor_rule_delete_on_termination_rule_enabled => foo' do
    let(:params) { {:simianarmy_janitor_rule_delete_on_termination_rule_enabled => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.janitor.rule.deleteOnTerminationRule.enabled = foo/) }
  end
  context 'with simianarmy_janitor_rule_delete_on_termination_rule_retention_days => foo' do
    let(:params) { {:simianarmy_janitor_rule_delete_on_termination_rule_retention_days => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.janitor.rule.deleteOnTerminationRule.retentionDays = foo/) }
  end
  context 'with simianarmy_janitor_rule_no_generated_ami_rule_age_threshold => foo' do
    let(:params) { {:simianarmy_janitor_rule_no_generated_ami_rule_age_threshold => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.janitor.rule.noGeneratedAMIRule.ageThreshold = foo/) }
  end
  context 'with simianarmy_janitor_rule_no_generated_ami_rule_enabled => foo' do
    let(:params) { {:simianarmy_janitor_rule_no_generated_ami_rule_enabled => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.janitor.rule.noGeneratedAMIRule.enabled = foo/) }
  end
  context 'with simianarmy_janitor_rule_no_generated_ami_rule_retention_days => foo' do
    let(:params) { {:simianarmy_janitor_rule_no_generated_ami_rule_retention_days => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.janitor.rule.noGeneratedAMIRule.retentionDays = foo/) }
  end
  context 'with simianarmy_janitor_rule_old_detached_volume_rule_detach_days_threshold => foo' do
    let(:params) { {:simianarmy_janitor_rule_old_detached_volume_rule_detach_days_threshold => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.janitor.rule.oldDetachedVolumeRule.detachDaysThreshold = foo/) }
  end
  context 'with simianarmy_janitor_rule_old_detached_volume_rule_enabled => foo' do
    let(:params) { {:simianarmy_janitor_rule_old_detached_volume_rule_enabled => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.janitor.rule.oldDetachedVolumeRule.enabled = foo/) }
  end
  context 'with simianarmy_janitor_rule_old_detached_volume_rule_retention_days => foo' do
    let(:params) { {:simianarmy_janitor_rule_old_detached_volume_rule_retention_days => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.janitor.rule.oldDetachedVolumeRule.retentionDays = foo/) }
  end
  context 'with simianarmy_janitor_rule_old_empty_asg_rule_enabled => foo' do
    let(:params) { {:simianarmy_janitor_rule_old_empty_asg_rule_enabled => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.janitor.rule.oldEmptyASGRule.enabled = foo/) }
  end
  context 'with simianarmy_janitor_rule_old_empty_asg_rule_launch_config_age_threshold => foo' do
    let(:params) { {:simianarmy_janitor_rule_old_empty_asg_rule_launch_config_age_threshold => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.janitor.rule.oldEmptyASGRule.launchConfigAgeThreshold = foo/) }
  end
  context 'with simianarmy_janitor_rule_old_empty_asg_rule_retention_days => foo' do
    let(:params) { {:simianarmy_janitor_rule_old_empty_asg_rule_retention_days => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.janitor.rule.oldEmptyASGRule.retentionDays = foo/) }
  end
  context 'with simianarmy_janitor_rule_old_unused_launch_config_rule_age_threshold => foo' do
    let(:params) { {:simianarmy_janitor_rule_old_unused_launch_config_rule_age_threshold => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.janitor.rule.oldUnusedLaunchConfigRule.ageThreshold = foo/) }
  end
  context 'with simianarmy_janitor_rule_old_unused_launch_config_rule_enabled => foo' do
    let(:params) { {:simianarmy_janitor_rule_old_unused_launch_config_rule_enabled => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.janitor.rule.oldUnusedLaunchConfigRule.enabled = foo/) }
  end
  context 'with simianarmy_janitor_rule_old_unused_launch_config_rule_retention_days => foo' do
    let(:params) { {:simianarmy_janitor_rule_old_unused_launch_config_rule_retention_days => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.janitor.rule.oldUnusedLaunchConfigRule.retentionDays = foo/) }
  end
  context 'with simianarmy_janitor_rule_orphaned_instance_rule_enabled => foo' do
    let(:params) { {:simianarmy_janitor_rule_orphaned_instance_rule_enabled => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.janitor.rule.orphanedInstanceRule.enabled = foo/) }
  end
  context 'with simianarmy_janitor_rule_orphaned_instance_rule_instance_age_threshold => foo' do
    let(:params) { {:simianarmy_janitor_rule_orphaned_instance_rule_instance_age_threshold => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.janitor.rule.orphanedInstanceRule.instanceAgeThreshold = foo/) }
  end
  context 'with simianarmy_janitor_rule_orphaned_instance_rule_opsworks_parentage => foo' do
    let(:params) { {:simianarmy_janitor_rule_orphaned_instance_rule_opsworks_parentage => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.janitor.rule.orphanedInstanceRule.opsworks.parentage = foo/) }
  end
  context 'with simianarmy_janitor_rule_orphaned_instance_rule_retention_days_with_owner => foo' do
    let(:params) { {:simianarmy_janitor_rule_orphaned_instance_rule_retention_days_with_owner => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.janitor.rule.orphanedInstanceRule.retentionDaysWithOwner = foo/) }
  end
  context 'with simianarmy_janitor_rule_orphaned_instance_rule_retention_days_without_owner => foo' do
    let(:params) { {:simianarmy_janitor_rule_orphaned_instance_rule_retention_days_without_owner => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.janitor.rule.orphanedInstanceRule.retentionDaysWithoutOwner = foo/) }
  end
  context 'with simianarmy_janitor_rule_suspended_asg_rule_enabled => foo' do
    let(:params) { {:simianarmy_janitor_rule_suspended_asg_rule_enabled => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.janitor.rule.suspendedASGRule.enabled = foo/) }
  end
  context 'with simianarmy_janitor_rule_suspended_asg_rule_retention_days => foo' do
    let(:params) { {:simianarmy_janitor_rule_suspended_asg_rule_retention_days => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.janitor.rule.suspendedASGRule.retentionDays = foo/) }
  end
  context 'with simianarmy_janitor_rule_suspended_asg_rule_suspension_age_threshold => foo' do
    let(:params) { {:simianarmy_janitor_rule_suspended_asg_rule_suspension_age_threshold => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.janitor.rule.suspendedASGRule.suspensionAgeThreshold = foo/) }
  end
  context 'with simianarmy_janitor_rule_untagged_rule_enabled => foo' do
    let(:params) { {:simianarmy_janitor_rule_untagged_rule_enabled => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.janitor.rule.untaggedRule.enabled = foo/) }
  end
  context 'with simianarmy_janitor_rule_untagged_rule_required_tags => foo' do
    let(:params) { {:simianarmy_janitor_rule_untagged_rule_required_tags => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.janitor.rule.untaggedRule.requiredTags = foo/) }
  end
  context 'with simianarmy_janitor_rule_untagged_rule_resources => foo' do
    let(:params) { {:simianarmy_janitor_rule_untagged_rule_resources => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.janitor.rule.untaggedRule.resources = foo/) }
  end
  context 'with simianarmy_janitor_rule_untagged_rule_retention_days_with_owner => foo' do
    let(:params) { {:simianarmy_janitor_rule_untagged_rule_retention_days_with_owner => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.janitor.rule.untaggedRule.retentionDaysWithOwner = foo/) }
  end
  context 'with simianarmy_janitor_rule_untagged_rule_retention_days_without_owner => foo' do
    let(:params) { {:simianarmy_janitor_rule_untagged_rule_retention_days_without_owner => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.janitor.rule.untaggedRule.retentionDaysWithoutOwner = foo/) }
  end
  context 'with simianarmy_janitor_rule_unused_image_rule_enabled => foo' do
    let(:params) { {:simianarmy_janitor_rule_unused_image_rule_enabled => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.janitor.rule.unusedImageRule.enabled = foo/) }
  end
  context 'with simianarmy_janitor_rule_unused_image_rule_last_reference_days_threshold => foo' do
    let(:params) { {:simianarmy_janitor_rule_unused_image_rule_last_reference_days_threshold => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.janitor.rule.unusedImageRule.lastReferenceDaysThreshold = foo/) }
  end
  context 'with simianarmy_janitor_rule_unused_image_rule_retention_days => foo' do
    let(:params) { {:simianarmy_janitor_rule_unused_image_rule_retention_days => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.janitor.rule.unusedImageRule.retentionDays = foo/) }
  end
  context 'with simianarmy_janitor_summary_email_to => foo' do
    let(:params) { {:simianarmy_janitor_summary_email_to => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.janitor.summaryEmail.to = foo/) }
  end
  context 'with simianarmy_scheduler_frequency => foo' do
    let(:params) { {:simianarmy_scheduler_frequency => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.scheduler.frequency = foo/) }
  end
  context 'with simianarmy_scheduler_frequency_unit => foo' do
    let(:params) { {:simianarmy_scheduler_frequency_unit => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.scheduler.frequencyUnit = foo/) }
  end
  context 'with simianarmy_scheduler_threads => foo' do
    let(:params) { {:simianarmy_scheduler_threads => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.scheduler.threads = foo/) }
  end
end
require 'spec_helper'
describe 'simianarmy::conformity_properties' do
  context 'with defaults for all parameters' do
    it { is_expected.to contain_class('simianarmy::conformity_properties') }
  end
  context 'with simianarmy_calendar_close_hour => foo' do
    let(:params) { {:simianarmy_calendar_close_hour => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.calendar.closeHour = foo/) }
  end
  context 'with simianarmy_calendar_is_monkey_time => foo' do
    let(:params) { {:simianarmy_calendar_is_monkey_time => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.calendar.isMonkeyTime = foo/) }
  end
  context 'with simianarmy_calendar_open_hour => foo' do
    let(:params) { {:simianarmy_calendar_open_hour => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.calendar.openHour = foo/) }
  end
  context 'with simianarmy_calendar_timezone => foo' do
    let(:params) { {:simianarmy_calendar_timezone => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.calendar.timezone = foo/) }
  end
  context 'with simianarmy_conformity_eureka_enabled => foo' do
    let(:params) { {:simianarmy_conformity_eureka_enabled => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.conformity.Eureka.enabled = foo/) }
  end
  context 'with simianarmy_conformity_cluster_foo_excluded_rules => foo' do
    let(:params) { {:simianarmy_conformity_cluster_foo_excluded_rules => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.conformity.cluster.foo.excludedRules = foo/) }
  end
  context 'with simianarmy_conformity_cluster_foo_opted_out => foo' do
    let(:params) { {:simianarmy_conformity_cluster_foo_opted_out => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.conformity.cluster.foo.optedOut = foo/) }
  end
  context 'with simianarmy_conformity_cluster_foo_owner_email => foo' do
    let(:params) { {:simianarmy_conformity_cluster_foo_owner_email => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.conformity.cluster.foo.ownerEmail = foo/) }
  end
  context 'with simianarmy_conformity_enabled => foo' do
    let(:params) { {:simianarmy_conformity_enabled => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.conformity.enabled = foo/) }
  end
  context 'with simianarmy_conformity_leashed => foo' do
    let(:params) { {:simianarmy_conformity_leashed => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.conformity.leashed = foo/) }
  end
  context 'with simianarmy_conformity_notification_close_hour => foo' do
    let(:params) { {:simianarmy_conformity_notification_close_hour => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.conformity.notification.closeHour = foo/) }
  end
  context 'with simianarmy_conformity_notification_default_email => foo' do
    let(:params) { {:simianarmy_conformity_notification_default_email => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.conformity.notification.defaultEmail = foo/) }
  end
  context 'with simianarmy_conformity_notification_open_hour => foo' do
    let(:params) { {:simianarmy_conformity_notification_open_hour => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.conformity.notification.openHour = foo/) }
  end
  context 'with simianarmy_conformity_notification_source_email => foo' do
    let(:params) { {:simianarmy_conformity_notification_source_email => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.conformity.notification.sourceEmail = foo/) }
  end
  context 'with simianarmy_conformity_rule_instance_has_health_check_url_enabled => foo' do
    let(:params) { {:simianarmy_conformity_rule_instance_has_health_check_url_enabled => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.conformity.rule.InstanceHasHealthCheckUrl.enabled = foo/) }
  end
  context 'with simianarmy_conformity_rule_instance_has_status_url_enabled => foo' do
    let(:params) { {:simianarmy_conformity_rule_instance_has_status_url_enabled => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.conformity.rule.InstanceHasStatusUrl.enabled = foo/) }
  end
  context 'with simianarmy_conformity_rule_instance_in_security_group_enabled => foo' do
    let(:params) { {:simianarmy_conformity_rule_instance_in_security_group_enabled => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.conformity.rule.InstanceInSecurityGroup.enabled = foo/) }
  end
  context 'with simianarmy_conformity_rule_instance_in_security_group_required_security_groups => foo' do
    let(:params) { {:simianarmy_conformity_rule_instance_in_security_group_required_security_groups => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.conformity.rule.InstanceInSecurityGroup.requiredSecurityGroups = foo/) }
  end
  context 'with simianarmy_conformity_rule_instance_is_healthy_in_eureka_enabled => foo' do
    let(:params) { {:simianarmy_conformity_rule_instance_is_healthy_in_eureka_enabled => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.conformity.rule.InstanceIsHealthyInEureka.enabled = foo/) }
  end
  context 'with simianarmy_conformity_rule_instance_too_old_enabled => foo' do
    let(:params) { {:simianarmy_conformity_rule_instance_too_old_enabled => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.conformity.rule.InstanceTooOld.enabled = foo/) }
  end
  context 'with simianarmy_conformity_rule_instance_too_old_instance_age_threshold => foo' do
    let(:params) { {:simianarmy_conformity_rule_instance_too_old_instance_age_threshold => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.conformity.rule.InstanceTooOld.instanceAgeThreshold = foo/) }
  end
  context 'with simianarmy_conformity_rule_same_zones_in_elb_and_asg_enabled => foo' do
    let(:params) { {:simianarmy_conformity_rule_same_zones_in_elb_and_asg_enabled => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.conformity.rule.SameZonesInElbAndAsg.enabled = foo/) }
  end
  context 'with simianarmy_conformity_sdb_domain => foo' do
    let(:params) { {:simianarmy_conformity_sdb_domain => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.conformity.sdb.domain = foo/) }
  end
  context 'with simianarmy_conformity_summary_email_to => foo' do
    let(:params) { {:simianarmy_conformity_summary_email_to => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.conformity.summaryEmail.to = foo/) }
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

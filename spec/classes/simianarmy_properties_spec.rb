require 'spec_helper'
describe 'simianarmy::simianarmy_properties' do
  context 'with defaults for all parameters' do
    it { is_expected.to contain_class('simianarmy::simianarmy_properties') }
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
  context 'with simianarmy_recorder_sdb_domain => foo' do
    let(:params) { {:simianarmy_recorder_sdb_domain => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.recorder.sdb.domain = foo/) }
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
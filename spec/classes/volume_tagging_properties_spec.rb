require 'spec_helper'
describe 'simianarmy::volume_tagging_properties' do
  context 'with defaults for all parameters' do
    it { is_expected.to contain_class('simianarmy::volume_tagging_properties') }
  end
  context 'with simianarmy_calendar_is_monkey_time => foo' do
    let(:params) { {:simianarmy_calendar_is_monkey_time => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.calendar.isMonkeyTime = foo/) }
  end
  context 'with simianarmy_volume_tagging_enabled => foo' do
    let(:params) { {:simianarmy_volume_tagging_enabled => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.volumeTagging.enabled = foo/) }
  end
  context 'with simianarmy_volume_tagging_leashed => foo' do
    let(:params) { {:simianarmy_volume_tagging_leashed => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.volumeTagging.leashed = foo/) }
  end
  context 'with simianarmy_volume_tagging_owner_email_domain => foo' do
    let(:params) { {:simianarmy_volume_tagging_owner_email_domain => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.volumeTagging.ownerEmailDomain = foo/) }
  end
end

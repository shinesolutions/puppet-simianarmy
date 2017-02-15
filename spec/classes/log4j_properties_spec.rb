require 'spec_helper'
describe 'simianarmy::log4j_properties' do
  context 'with defaults for all parameters' do
    it { is_expected.to contain_class('simianarmy::log4j_properties') }
    it {
      is_expected.to contain_file('/var/lib/tomcat/webapps/simianarmy/WEB-INF/classes/log4j.properties')
        .with_content(/^log4j.appender.stdout.threshold = WARN/)
        .with_content(/^log4j.appender.dailyRolling.threshold = INFO/)
    }
  end
  context 'with stdout_threshold => ERROR' do
    let(:params) { {:stdout_threshold => 'ERROR', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^log4j.appender.stdout.threshold = ERROR/) }
  end
  context 'with daily_rolling_threshold => ERROR' do
    let(:params) { {:daily_rolling_threshold => 'ERROR', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^log4j.appender.dailyRolling.threshold = ERROR/) }
  end
end

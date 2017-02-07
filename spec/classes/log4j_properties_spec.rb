require 'spec_helper'
describe 'simianarmy::log4j_properties' do
  context 'with defaults for all parameters' do
    it { is_expected.to contain_class('simianarmy::log4j_properties') }
  end
  context 'with log4j_appender_stdout => foo' do
    let(:params) { {:log4j_appender_stdout => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^log4j.appender.stdout = foo/) }
  end
  context 'with log4j_appender_stdout_layout => foo' do
    let(:params) { {:log4j_appender_stdout_layout => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^log4j.appender.stdout.layout = foo/) }
  end
  context 'with log4j_appender_stdout_layout_conversion_pattern => foo' do
    let(:params) { {:log4j_appender_stdout_layout_conversion_pattern => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^log4j.appender.stdout.layout.ConversionPattern = foo/) }
  end
  context 'with log4j_root_logger => foo' do
    let(:params) { {:log4j_root_logger => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^log4j.rootLogger = foo/) }
  end
end
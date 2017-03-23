require 'spec_helper'
describe 'simianarmy::client_properties' do
  context 'with defaults for all parameters' do
    it { is_expected.to contain_class('simianarmy::client_properties') }
  end
  context 'with simianarmy_client_aws_account_key => foo' do
    let(:params) { {:simianarmy_client_aws_account_key => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.client.aws.accountKey = foo/) }
  end
  context 'with simianarmy_client_aws_account_name => foo' do
    let(:params) { {:simianarmy_client_aws_account_name => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.client.aws.accountName = foo/) }
  end
  context 'with simianarmy_client_aws_assume_role_arn => foo' do
    let(:params) { {:simianarmy_client_aws_assume_role_arn => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.client.aws.assumeRoleArn = foo/) }
  end
  context 'with simianarmy_client_aws_proxy_host => foo' do
    let(:params) { {:simianarmy_client_aws_proxy_host => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.client.aws.proxyHost = foo/) }
  end
  context 'with simianarmy_client_aws_proxy_password => foo' do
    let(:params) { {:simianarmy_client_aws_proxy_password => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.client.aws.proxyPassword = foo/) }
  end
  context 'with simianarmy_client_aws_proxy_port => foo' do
    let(:params) { {:simianarmy_client_aws_proxy_port => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.client.aws.proxyPort = foo/) }
  end
  context 'with simianarmy_client_aws_proxy_user => foo' do
    let(:params) { {:simianarmy_client_aws_proxy_user => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.client.aws.proxyUser = foo/) }
  end
  context 'with simianarmy_client_aws_region => foo' do
    let(:params) { {:simianarmy_client_aws_region => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.client.aws.region = foo/) }
  end
  context 'with simianarmy_client_aws_secret_key => foo' do
    let(:params) { {:simianarmy_client_aws_secret_key => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.client.aws.secretKey = foo/) }
  end
  context 'with simianarmy_client_chaos_class => foo' do
    let(:params) { {:simianarmy_client_chaos_class => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.client.chaos.class = foo/) }
  end
  context 'with simianarmy_client_context_class => foo' do
    let(:params) { {:simianarmy_client_context_class => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.client.context.class = foo/) }
  end
  context 'with simianarmy_client_recorder_class => foo' do
    let(:params) { {:simianarmy_client_recorder_class => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.client.recorder.class = foo/) }
  end
  context 'with simianarmy_client_vsphere_password => foo' do
    let(:params) { {:simianarmy_client_vsphere_password => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.client.vsphere.password = foo/) }
  end
  context 'with simianarmy_client_vsphere_termination_strategy_property_name => foo' do
    let(:params) { {:simianarmy_client_vsphere_termination_strategy_property_name => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.client.vsphere.terminationStrategy.property.name = foo/) }
  end
  context 'with simianarmy_client_vsphere_termination_strategy_property_value => foo' do
    let(:params) { {:simianarmy_client_vsphere_termination_strategy_property_value => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.client.vsphere.terminationStrategy.property.value = foo/) }
  end
  context 'with simianarmy_client_vsphere_url => foo' do
    let(:params) { {:simianarmy_client_vsphere_url => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.client.vsphere.url = foo/) }
  end
  context 'with simianarmy_client_vsphere_username => foo' do
    let(:params) { {:simianarmy_client_vsphere_username => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.client.vsphere.username = foo/) }
  end
end

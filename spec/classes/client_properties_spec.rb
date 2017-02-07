require 'spec_helper'
describe 'simianarmy::client_properties' do
  context 'with defaults for all parameters' do
    it { is_expected.to contain_class('simianarmy::client_properties') }
  end
  context 'with simianarmy_client_aws_account_name => foo' do
    let(:params) { {:simianarmy_client_aws_account_name => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.client.aws.accountName = foo/) }
  end
  context 'with simianarmy_client_aws_region => foo' do
    let(:params) { {:simianarmy_client_aws_region => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.client.aws.region = foo/) }
  end
end
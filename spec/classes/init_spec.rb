require 'spec_helper'
describe 'simianarmy' do
  context 'with defaults for all parameters' do
    it { is_expected.to contain_class('simianarmy') }
    it { is_expected.to contain_class('simianarmy::chaos_properties') }
    it { is_expected.to contain_class('simianarmy::client_properties') }
    it { is_expected.to contain_class('simianarmy::conformity_properties') }
    it { is_expected.to contain_class('simianarmy::volume_tagging_properties') }
    it { is_expected.to contain_class('simianarmy::janitor_properties') }
    it { is_expected.to contain_class('simianarmy::log4j_properties') }
    it { is_expected.to contain_class('simianarmy::simianarmy_properties') }
    it { is_expected.to contain_package('tomcat') }
    it { is_expected.to contain_file('/opt/netflix') }
    it { is_expected.to contain_archive('/opt/netflix/simianarmy/simianarmy.war') }
    it { is_expected.to contain_file('/opt/netflix/simianarmy/simianarmy.war') }
    it { is_expected.to contain_file('/var/lib/tomcat/webapps/simianarmy') }
    it { is_expected.to contain_file('/var/lib/tomcat/webapps/simianarmy/WEB-INF/classes/chaos.properties') }
    it { is_expected.to contain_file('/var/lib/tomcat/webapps/simianarmy/WEB-INF/classes/client.properties') }
    it { is_expected.to contain_file('/var/lib/tomcat/webapps/simianarmy/WEB-INF/classes/conformity.properties') }
    it { is_expected.to contain_file('/var/lib/tomcat/webapps/simianarmy/WEB-INF/classes/janitor.properties') }
    it { is_expected.to contain_file('/var/lib/tomcat/webapps/simianarmy/WEB-INF/classes/log4j.properties') }
    it { is_expected.to contain_file('/var/lib/tomcat/webapps/simianarmy/WEB-INF/classes/simianarmy.properties') }
    it { is_expected.to contain_file('/var/lib/tomcat/webapps/simianarmy/WEB-INF/classes/volumeTagging.properties') }
    it { is_expected.to contain_user('simianarmy') }
    it { is_expected.to contain_group('simianarmy') }
    it { is_expected.to contain_service('tomcat') }
  end
end

require 'spec_helper'
describe 'simianarmy::chaos_properties::asg' do
  path = '/tmp/file.properties'

  let(:title) { 'test-asg' }
  let(:params) {{
    :path => path,
  }}
  context 'with defaults for all parameters' do
    it { is_expected.to contain_simianarmy__chaos_properties__asg('test-asg') }
    it { is_expected.to contain_file_line('test-asg.enabled')
         .with_line('simianarmy.chaos.ASG.test-asg.enabled = false')
         .with_path(path)
    }
    it { is_expected.not_to contain_file_line('test-asg.probability') }
    it { is_expected.not_to contain_file_line('test-asg.maxTerminationsPerDay') }
    it { is_expected.not_to contain_file_line('test-asg.notification.enabled') }
    it { is_expected.not_to contain_file_line('test-asg.ownerEmail') }
  end
  context 'with enabled => true' do
    let(:params) {{
      :path    => path,
      :enabled => true,
    }}
    it { is_expected.to contain_simianarmy__chaos_properties__asg('test-asg') }
    it { is_expected.to contain_file_line('test-asg.enabled')
         .with_line('simianarmy.chaos.ASG.test-asg.enabled = true')
         .with_path(path)
    }
    it { is_expected.to contain_file_line('test-asg.probability')
         .with_line('simianarmy.chaos.ASG.test-asg.probability = 1.0')
         .with_path(path)
    }
    it { is_expected.to contain_file_line('test-asg.maxTerminationsPerDay')
         .with_line('simianarmy.chaos.ASG.test-asg.maxTerminationsPerDay = 1.0')
         .with_path(path)
    }
    it { is_expected.not_to contain_file_line('test-asg.notification.enabled') }
    it { is_expected.not_to contain_file_line('test-asg.ownerEmail') }
  end
  context 'with enabled => true and different probabilities' do
    let(:params) {{
      :path                     => path,
      :enabled                  => true,
      :probability              => '0.5',
      :max_terminations_per_day => '0.5',
    }}
    it { is_expected.to contain_simianarmy__chaos_properties__asg('test-asg') }
    it { is_expected.to contain_file_line('test-asg.enabled')
         .with_line('simianarmy.chaos.ASG.test-asg.enabled = true')
         .with_path(path)
    }
    it { is_expected.to contain_file_line('test-asg.probability')
         .with_line('simianarmy.chaos.ASG.test-asg.probability = 0.5')
         .with_path(path)
    }
    it { is_expected.to contain_file_line('test-asg.maxTerminationsPerDay')
         .with_line('simianarmy.chaos.ASG.test-asg.maxTerminationsPerDay = 0.5')
         .with_path(path)
    }
    it { is_expected.not_to contain_file_line('test-asg.notification.enabled') }
    it { is_expected.not_to contain_file_line('test-asg.ownerEmail') }
  end
  context 'with enabled => false and owner_email => foo@bar.com.au' do
    let(:params) {{
      :path        => path,
      :enabled     => false,
      :owner_email => 'foo@bar.com.au',
    }}
    it { is_expected.to contain_simianarmy__chaos_properties__asg('test-asg') }
    it { is_expected.to contain_file_line('test-asg.enabled')
         .with_line('simianarmy.chaos.ASG.test-asg.enabled = false')
         .with_path(path)
    }
    it { is_expected.not_to contain_file_line('test-asg.probability') }
    it { is_expected.not_to contain_file_line('test-asg.maxTerminationsPerDay') }
    it { is_expected.not_to contain_file_line('test-asg.notification.enabled') }
    it { is_expected.not_to contain_file_line('test-asg.ownerEmail') }
  end
  context 'with enabled => true and owner_email => foo@bar.com.au' do
    let(:params) {{
      :path        => path,
      :enabled     => true,
      :owner_email => 'foo@bar.com.au',
    }}
    it { is_expected.to contain_simianarmy__chaos_properties__asg('test-asg') }
    it { is_expected.to contain_file_line('test-asg.enabled')
         .with_line('simianarmy.chaos.ASG.test-asg.enabled = true')
         .with_path(path)
    }
    it { is_expected.to contain_file_line('test-asg.probability')
         .with_line('simianarmy.chaos.ASG.test-asg.probability = 1.0')
         .with_path(path)
    }
    it { is_expected.to contain_file_line('test-asg.maxTerminationsPerDay')
         .with_line('simianarmy.chaos.ASG.test-asg.maxTerminationsPerDay = 1.0')
         .with_path(path)
    }
    it { is_expected.to contain_file_line('test-asg.notification.enabled')
         .with_line('simianarmy.chaos.ASG.test-asg.notification.enabled = true')
         .with_path(path)
    }
    it { is_expected.to contain_file_line('test-asg.ownerEmail')
         .with_line('simianarmy.chaos.ASG.test-asg.ownerEmail = foo@bar.com.au')
         .with_path(path)
    }
  end
end

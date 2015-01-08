require 'spec_helper'

describe 'etc_services' do
  context 'supported operating systems' do
    ['Debian', 'RedHat'].each do |osfamily|
      describe "etc_services class without any parameters on #{osfamily}" do
        let(:params) {{ }}
        let(:facts) {{
          :osfamily => osfamily,
        }}

        it { should compile.with_all_deps }

        it { should contain_class('etc_services::params') }
        it { should contain_class('etc_services::install').that_comes_before('etc_services::config') }
        it { should contain_class('etc_services::config') }
        it { should contain_class('etc_services::service').that_subscribes_to('etc_services::config') }

        it { should contain_service('etc_services') }
        it { should contain_package('etc_services').with_ensure('present') }
      end
    end
  end

  context 'unsupported operating system' do
    describe 'etc_services class without any parameters on Solaris/Nexenta' do
      let(:facts) {{
        :osfamily        => 'Solaris',
        :operatingsystem => 'Nexenta',
      }}

      it { expect { should contain_package('etc_services') }.to raise_error(Puppet::Error, /Nexenta not supported/) }
    end
  end
end

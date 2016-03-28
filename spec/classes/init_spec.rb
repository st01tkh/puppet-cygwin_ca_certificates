require 'spec_helper'
describe 'cygwin_ca_certificates' do

  context 'with defaults for all parameters' do
    it { should contain_class('cygwin_ca_certificates') }
  end
end

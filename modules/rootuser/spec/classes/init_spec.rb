require 'spec_helper'
describe 'rootuser' do

  context 'with defaults for all parameters' do
    it { should contain_class('rootuser') }
  end
end

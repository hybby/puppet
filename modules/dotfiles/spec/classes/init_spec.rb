require 'spec_helper'
describe 'dotfiles' do

  context 'with defaults for all parameters' do
    it { should contain_class('dotfiles') }
  end
end

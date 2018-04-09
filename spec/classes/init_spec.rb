require 'spec_helper'
describe 'spark' do
  context 'with default values for all parameters' do
    it { should contain_class('spark') }
  end
end

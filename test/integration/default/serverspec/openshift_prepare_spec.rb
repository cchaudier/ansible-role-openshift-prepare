require_relative 'spec_helper'


describe 'wget Packages' do
    describe package('wget') do
        it { should be_installed }
    end
end

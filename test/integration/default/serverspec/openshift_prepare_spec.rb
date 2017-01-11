require_relative 'spec_helper'

packages = [ "wget", "git", "net-tools", "bind-utils", "iptables-services", "bridge-utils", "bash-completion", "ansible", "pyOpenSSL" ]

packages.each do |package|
  describe "#{package} Packages" do
      describe package("#{package}") do
          it { should be_installed }
      end
  end
end

describe yumrepo('epel') do
  it { should exist }
  it { should_not be_enabled }
end

describe selinux do
  it { should_not be_disabled }
end

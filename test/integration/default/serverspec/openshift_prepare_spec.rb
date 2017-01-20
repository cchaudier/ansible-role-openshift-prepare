require_relative 'spec_helper'

packages = [ "wget", "git", "net-tools", "bind-utils", "iptables-services", "bridge-utils", "bash-completion", "ansible", "pyOpenSSL", "docker" ]
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

ports = [ 22, 80, 443, 8443 ]
ports.each do |port|
  describe port(port) do
    it { should be_listening }
  end
end

describe service('docker') do
  it { should be_enabled }
  it { should be_running }
end

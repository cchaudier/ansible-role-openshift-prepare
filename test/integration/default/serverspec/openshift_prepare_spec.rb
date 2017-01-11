require_relative 'spec_helper'

packages = [ "wget", "git", "net-tools", "bind-utils", "iptables-services", "bridge-utils", "bash-completion", "ansible", "pyOpenSSL" ]

packages.each do |package|
  describe ""#{package} Packages" do
      describe package("#{package}") do
          it { should be_installed }
      end
  end
end

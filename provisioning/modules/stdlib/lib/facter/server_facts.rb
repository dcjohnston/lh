[:company_role, :company_environment, :company_datacenter, :company_provider].each do |code|
  Facter.add(code) do
    setcode do
      Facter::Util::Resolution.exec("/bin/grep #{code} /etc/server.facts | /usr/bin/awk '{print $3}'")
    end
  end
end

# idrac.rb
# For now it just exports idrac_version

if Facter.value(:manufacturer) == 'Dell Inc.'
    Facter.add("idrac_version") do
        confine :kernel => 'Linux'
        setcode do
            # I wish there was a nicer way to get the version...
            Facter::Util::Resolution.exec('/opt/dell/srvadmin/bin/omreport chassis info -fmt ssv |grep ^iDRAC |cut -d";" -f 2')
        end
    end
end


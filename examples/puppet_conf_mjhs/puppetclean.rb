#!/usr/bin/env ruby
#
# puppetclean.rb
#
# Usage:  This script will clean the puppet ssl and vardirs as well as remove the
#           ssl certificate from the server.
require 'facter'
require 'fileutils'


ip = Facter.value(:ipaddress).split('.')[2]
mac_uid = %x(nvram MAC_UID | awk '{print $2}')
server = case ip
  when 0 then 'testing.huronhs.com'
  when 1, 5 then 'helpdesk.huronhs.com'
  when 2 then 'msreplica.huronhs.com'
  when 3 then 'wesreplica.huronhs.com'
  else 'testing.huronhs.com'
end
command = "http://#{server}/cgi-bin/pclean.rb?certname=#{mac_uid}"

FileUtils.rm_rf '/etc/puppet/ssl'
FileUtils.rm_rf '/var/puppet'
system "curl #{command}"
#
#   Copyright 2009 Joe Block <jpb@ApesSeekingKnowledge.net>
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.
#
# Example showing adding new target directories

include /usr/local/share/luggage/luggage.make

TITLE=Puppet-Launchd-Every-60-Seconds
REVERSE_DOMAIN=com.huronhs
PAYLOAD=\
		pack-puppetd-launchdaemon \
		pack-script-postinstall

pack-puppetd-launchdaemon: l_Library_LaunchDaemons
	@sudo ${CP} ./com.huronhs.puppetconfig.plist ${WORK_D}/Library/LaunchDaemons/com.huronhs.puppetconfig.plist
	@sudo chmod 644 ${WORK_D}/Library/LaunchDaemons/com.huronhs.puppetconfig.plist

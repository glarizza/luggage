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

TITLE=HHS_Main_Office_9050_Installer
REVERSE_DOMAIN=com.huronhs
PAYLOAD=\
		pack-hp-ppd \
		pack-script-preflight

pack-hp-ppd: l_etc_cups_ppd
	@sudo ${CP} ./mcx_HHS_Office_9050.ppd ${WORK_D}/etc/cups/ppd/mcx_HHS_Office_9050.ppd
	@sudo chmod 644 ${WORK_D}/etc/cups/ppd/mcx_HHS_Office_9050.ppd
	@sudo chown root:_lp ${WORK_D}/etc/cups/ppd/mcx_HHS_Office_9050.ppd
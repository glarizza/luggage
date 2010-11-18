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

TITLE=WIS_Meeting_Printer_Installer
REVERSE_DOMAIN=com.huronhs
PAYLOAD=\
		pack-hp-driver \
		pack-script-postinstall

pack-hp-driver: l_Library_Printers_PPDs
	@sudo ${CP} ./HP\ LaserJet\ P2035.gz ${WORK_D}/Library/Printers/PPDs/Contents/Resources/
	@sudo chmod 664 ${WORK_D}/Library/Printers/PPDs/Contents/Resources/HP\ LaserJet\ P2035.gz
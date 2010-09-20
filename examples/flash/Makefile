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

TITLE=Flash_Installer_64_Bit
REVERSE_DOMAIN=com.huronhs
PAYLOAD=\
		pack-flash-manager \
		pack-flash-plugin \
		pack-flash-xpt


pack-flash-manager: l_Applications_Utilities
	@sudo ${CP} -R ./Adobe\ Flash\ Player\ Install\ Manager.app ${WORK_D}/Applications/Utilities/Adobe\ Flash\ Player\ Install\ Manager.app
	@sudo chmod -R 775 ${WORK_D}/Applications/Utilities/Adobe\ Flash\ Player\ Install\ Manager.app
	
pack-flash-plugin: l_Library_Internet_Plug-Ins
	@sudo ${CP} -R ./Flash\ Player.plugin ${WORK_D}/Library/Internet\ Plug-Ins
	@sudo chmod -R 775 ${WORK_D}/Library/Internet\ Plug-Ins/Flash\ Player.plugin
	
pack-flash-xpt: l_Library_Internet_Plug-Ins
	@sudo ${CP} ./flashplayer.xpt ${WORK_D}/Library/Internet\ Plug-Ins/flashplayer.xpt
	@sudo chmod 755 ${WORK_D}/Library/Internet\ Plug-Ins/flashplayer.xpt
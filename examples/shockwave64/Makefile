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

TITLE=Shockwave_Installer_64_Bit
REVERSE_DOMAIN=com.huronhs
PAYLOAD=\
		pack-shockwave-folder \
		pack-shockwave-plugin \
		pack-shockwave-ppc


pack-shockwave-folder: l_Library_Application_Support_Adobe
	@sudo ${CP} -R ./Shockwave\ 11 ${WORK_D}/Library/Application\ Support/Adobe/Shockwave\ 11
	@sudo chmod -R 755 ${WORK_D}/Library/Application\ Support/Adobe/Shockwave\ 11
	
pack-shockwave-plugin: l_Library_Internet_Plug-Ins
	@sudo ${CP} -R ./DirectorShockwave.plugin ${WORK_D}/Library/Internet\ Plug-Ins
	@sudo chmod -R 755 ${WORK_D}/Library/Internet\ Plug-Ins/DirectorShockwave.plugin
	
pack-shockwave-ppc: l_Library_Internet_Plug-Ins
	@sudo ${CP} ./NP-PPC-Dir-Shockwave ${WORK_D}/Library/Internet\ Plug-Ins/NP-PPC-Dir-Shockwave
	@sudo chmod 755 ${WORK_D}/Library/Internet\ Plug-Ins/NP-PPC-Dir-Shockwave
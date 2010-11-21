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

TITLE=Mcollective_Install
REVERSE_DOMAIN=com.huronhs
PAYLOAD=\
		pack-mc-libexec \
		pack-mc-binaries \
		pack-mc-lib \
		pack-mc-config


pack-mc-libexec: l_usr_libexec
	@sudo ${CP} -R ./plugins/* ${WORK_D}/usr/libexec
	@sudo chmod -R 755 ${WORK_D}/usr/libexec/mcollective
	
pack-mc-binaries: l_usr_sbin
	@sudo ${CP} ./binaries/* ${WORK_D}/usr/sbin
	@sudo ${CP} ./mcollectived.rb ${WORK_D}/usr/sbin/mcollectived
	@sudo chmod -R 755 ${WORK_D}/usr/sbin
	
pack-mc-lib: l_Library_Ruby_Site_1_8
	@sudo ${CP} -R ./lib/* ${WORK_D}/Library/Ruby/Site/1.8
	@sudo chmod -R 755 ${WORK_D}/Library/Ruby/Site/1.8
	
pack-mc-config: l_etc_mcollective
	@sudo ${CP} ./etc/facts.yaml.dist ${WORK_D}/etc/mcollective/facts.yaml
	@sudo ${CP} ./etc/client.cfg.dist ${WORK_D}/etc/mcollective/client.cfg
	@sudo ${CP} ./etc/server.cfg.dist ${WORK_D}/etc/mcollective/server.cfg
	@sudo ${CP} ./etc/rpc-help.erb ${WORK_D}/etc/mcollective/rpc-help.erb
	@sudo ${CP} -R ./etc/ssl ${WORK_D}/etc/mcollective/
	@sudo chmod -R 755 ${WORK_D}/etc/mcollective
	@sudo chmod 600 ${WORK_D}/etc/mcollective/server.cfg
	@sudo chmod 600 ${WORK_D}/etc/mcollective/client.cfg
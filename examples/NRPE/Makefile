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

TITLE=NRPE_Setup
REVERSE_DOMAIN=com.huronhs
PAYLOAD=\
	pack-nrpe-bin \
	pack-nrpe-plugin \
	pack-nrpe-conf

prep-nagios-dirs: l_usr_local
	@sudo mkdir -p ${WORK_D}/usr/local/nagios/libexec
	@sudo mkdir -p ${WORK_D}/usr/local/nagios/etc	
	@sudo mkdir -p ${WORK_D}/usr/local/nagios/bin	
	@sudo chown -R nagiosuser:nagios ${WORK_D}/usr/local/nagios/*
	@sudo chmod -R 755 ${WORK_D}/usr/local/nagios/*

	
pack-nrpe-bin: prep-nagios-dirs
	@sudo ${CP} nrpe ${WORK_D}/usr/local/nagios/bin
	@sudo chown nagiosuser:nagios ${WORK_D}/usr/local/nagios/bin/nrpe
	@sudo chmod 755 ${WORK_D}/usr/local/nagios/bin/nrpe
	
pack-nrpe-plugin: prep-nagios-dirs
	@sudo ${CP} check_nrpe ${WORK_D}/usr/local/nagios/libexec/check_nrpe
	@sudo chown nagiosuser:nagios ${WORK_D}/usr/local/nagios/libexec/check_nrpe
	@sudo chmod 755 ${WORK_D}/usr/local/nagios/libexec/check_nrpe

pack-nrpe-conf: prep-nagios-dirs
	@sudo ${CP} nrpe.cfg ${WORK_D}/usr/local/nagios/etc
	@sudo chown nagiosuser:nagios ${WORK_D}/usr/local/nagios/etc/nrpe.cfg
	@sudo chmod 755 ${WORK_D}/usr/local/nagios/etc/nrpe.cfg

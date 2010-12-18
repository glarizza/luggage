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
#  Example:  A dynamic installer for Puppet
#
#  Author:  Gary Larizza
#  Created: 12/17/2010
#  Last Modified: 12/17/2010
#
#  Description:  This Makefile will download the version of Puppet specified
#    in the PACKAGE_VERSION variable from the Puppet Labs website, untar it,
#    and then install the source files into their Mac-specific locations.  
#    The MAJOR and MINOR versions must be specified for the Info.plist file
#    that Packagemaker requires, but I use awk on the PACKAGE_VERSION to 
#    get these.  See inline comments.
#
include /usr/local/share/luggage/luggage.make



TITLE=MCollective_Installer_Full
REVERSE_DOMAIN=com.puppetlabs
PAYLOAD=\
		unpack-mc-${MCFILE} \
		pack-mc-libexec \
		pack-mc-binaries \
		pack-mc-lib \
		pack-mc-config \
		pack-mc-config-server \
		pack-mc-config-client \
		pack-mc-launchd \
		pack-mc-mcollectived \
		pack-mc-preflight-all
		
# Variable Declarations:  Any variable can be set from the command line by
#    doing this:  "make pkg PACKAGE_VERSION=2.6.2"
PACKAGE_VERSION=1.0.0
PACKAGE_MAJOR_VERSION=`echo ${PACKAGE_VERSION} | awk -F '.' '{print $$1}'`
PACKAGE_MINOR_VERSION=`echo ${PACKAGE_VERSION} | awk -F '.' '{print $$2$$3}'`
MCFILE=mcollective-${PACKAGE_VERSION}
MCURL=http://puppetlabs.com/downloads/mcollective/${MCFILE}.tgz

ifeq (${TYPE},COMMON)
	PAYLOAD=\
			unpack-mc-${MCFILE} \
			pack-mc-libexec \
			pack-mc-lib \
			pack-mc-preflight-common
	TITLE=MCollective_Installer_Common
endif

ifeq (${TYPE},CLIENT)
	PAYLOAD=\
			unpack-mc-${MCFILE} \
			pack-mc-config \
			pack-mc-binaries \
			pack-mc-config-client \
			pack-mc-preflight-client
	TITLE=MCollective_Installer_Client
endif

ifeq (${TYPE},BASE)
	PAYLOAD=\
			unpack-mc-${MCFILE} \
			pack-mc-config \
			pack-mc-config-server \
			pack-mc-launchd \
			pack-mc-mcollectived \
			pack-mc-lib \
			pack-mc-preflight-base
	TITLE=MCollective_Installer_Base
endif

unpack-mc-${MCFILE}:
	curl ${MCURL} -o ${MCFILE}.tgz
	@sudo ${TAR} xzf ${MCFILE}.tgz

pack-mc-libexec: l_usr_libexec
	@sudo ${CP} -R ./${MCFILE}/plugins/* ${WORK_D}/usr/libexec
	@sudo chmod -R 755 ${WORK_D}/usr/libexec/mcollective

pack-mc-binaries: l_usr_sbin
	@sudo ${CP} ./${MCFILE}/mc-* ${WORK_D}/usr/sbin
	@sudo chmod -R 755 ${WORK_D}/usr/sbin
	
pack-mc-mcollectived: l_usr_sbin
	@sudo ${CP} ./${MCFILE}/mcollectived.rb ${WORK_D}/usr/sbin/mcollectived
	@sudo chmod -R 755 ${WORK_D}/usr/sbin

pack-mc-lib: l_usr_lib_ruby_site_ruby_1_8
	@sudo ${CP} -R ./${MCFILE}/lib/* ${WORK_D}/usr/lib/ruby/site_ruby/1.8
	@sudo chmod -R 755 ${WORK_D}/usr/lib/ruby/site_ruby/1.8
	
pack-mc-config: l_etc_mcollective
	@sudo ${CP} ./${MCFILE}/etc/facts.yaml.dist ${WORK_D}/etc/mcollective/facts.yaml
	@sudo ${CP} ./${MCFILE}/etc/rpc-help.erb ${WORK_D}/etc/mcollective/rpc-help.erb
	@sudo ${CP} -R ./${MCFILE}/etc/ssl ${WORK_D}/etc/mcollective/
	@sudo chmod -R 755 ${WORK_D}/etc/mcollective
	
pack-mc-config-server: l_etc_mcollective
	@sudo ${CP} ./${MCFILE}/etc/server.cfg.dist ${WORK_D}/etc/mcollective/server.cfg
	@sudo chmod 600 ${WORK_D}/etc/mcollective/server.cfg
	sed -i '' "s#daemonize = 1#daemonize = 0#g" "${WORK_D}/etc/mcollective/server.cfg"
	
pack-mc-config-client: l_etc_mcollective
	@sudo ${CP} ./${MCFILE}/etc/client.cfg.dist ${WORK_D}/etc/mcollective/client.cfg
	@sudo chmod 600 ${WORK_D}/etc/mcollective/client.cfg
	sed -i '' "s#libdir = /usr/libexec/mcollective#libdir = /usr/libexec#g" "${WORK_D}/etc/mcollective/client.cfg"

pack-mc-launchd: l_Library_LaunchDaemons
	@sudo ${CP} ./com.puppetlabs.mcollective.plist ${WORK_D}/Library/LaunchDaemons
	@sudo chmod 644 ${WORK_D}/Library/LaunchDaemons/com.puppetlabs.mcollective.plist

pack-mc-preflight-all:
	@sudo ${INSTALL} -m 755 ./preflight ${SCRIPT_D}
	
pack-mc-preflight-client:
	@sudo ${INSTALL} -m 755 ./preflight_client ${SCRIPT_D}/preflight
	
pack-mc-preflight-common:
	@sudo ${INSTALL} -m 755 ./preflight_common ${SCRIPT_D}/preflight
	
pack-mc-preflight-base:
	@sudo ${INSTALL} -m 755 ./preflight_base ${SCRIPT_D}/preflight
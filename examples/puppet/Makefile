
include /usr/local/share/luggage/luggage.make

TITLE=Puppet_Installer
REVERSE_DOMAIN=com.puppetlabs
PAYLOAD=\
		unpack-puppet-${PUPPETFILE} \
		pack-puppet-etc \
		pack-puppet-usr \
		pack-puppet-preflight
		
PACKAGE_VERSION=2.6.4
PACKAGE_MAJOR_VERSION=2
PACKAGE_MINOR_VERSION=64
PUPPETFILE=puppet-${PACKAGE_VERSION}
PUPPETURL=http://puppetlabs.com/downloads/puppet/${PUPPETFILE}

unpack-puppet-${PUPPETFILE}:
	curl ${PUPPETURL}.tar.gz -o ${PUPPETFILE}.tar.gz
	@sudo ${TAR} xzf ${PUPPETFILE}.tar.gz

pack-puppet-etc: l_etc_puppet
	@sudo ${CP} ./${PUPPETFILE}/conf/auth.conf ${WORK_D}/etc/puppet/auth.conf
	@sudo chmod 755 ${WORK_D}/etc/puppet/auth.conf
	
pack-puppet-usr: l_usr_bin l_usr_lib_ruby_site_ruby_1_8 l_usr_sbin l_usr_share_doc l_usr_share_man
	@sudo ${CP} -R ./${PUPPETFILE}/bin/ ${WORK_D}/usr/bin/
	@sudo chmod -R 755 ${WORK_D}/usr/bin/
	@sudo ${CP} -R ./${PUPPETFILE}/lib/ ${WORK_D}/usr/lib/ruby/site_ruby/1.8/
	@sudo chmod -R 755 ${WORK_D}/usr/lib/
	@sudo ${CP} -R ./${PUPPETFILE}/sbin/ ${WORK_D}/usr/sbin/
	@sudo chmod -R 755 ${WORK_D}/usr/sbin/
	@sudo ${CP} -R ./${PUPPETFILE}/CHANGELOG ${WORK_D}/usr/share/doc
	@sudo ${CP} -R ./${PUPPETFILE}/CHANGELOG.old ${WORK_D}/usr/share/doc
	@sudo ${CP} -R ./${PUPPETFILE}/COPYING ${WORK_D}/usr/share/doc
	@sudo ${CP} -R ./${PUPPETFILE}/LICENSE ${WORK_D}/usr/share/doc
	@sudo ${CP} -R ./${PUPPETFILE}/README ${WORK_D}/usr/share/doc
	@sudo ${CP} -R ./${PUPPETFILE}/README.queueing ${WORK_D}/usr/share/doc
	@sudo ${CP} -R ./${PUPPETFILE}/README.rst ${WORK_D}/usr/share/doc
	@sudo chmod -R 755 ${WORK_D}/usr/share/doc/
	@sudo ${CP} -R ./${PUPPETFILE}/man/ ${WORK_D}/usr/share/man
	@sudo chmod -R 755 ${WORK_D}/usr/share/man/
	
pack-puppet-preflight:
	@sudo ${INSTALL} -m 755 ./${PUPPETFILE}/conf/osx/preflight ${SCRIPT_D}
	
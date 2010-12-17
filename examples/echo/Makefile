
#include /usr/local/share/luggage/luggage.make

VERSION=2.6.4
PKGTYPE=help
OUTPUT="This is ${PKGTYPE}."

ifeq (${VERSION},2.6.4)
	PKGTYPE=ALL
else
	PKGTYPE=CLIENT
endif

help:
	@-echo "The value of VERSION is ${VERSION}."
	@-echo "The value of PKGTYPE is ${PKGTYPE}."

conditional:
ifeq (${VERSION},2.6.4)
	@-echo "Version is 2.6.4"
else
	@-echo "Version is NOT 2.6.4"
endif
	@-echo "This is a regular Echo Statement."
	@-echo "These lines must be indented"
	
out:
	@-echo "First line."
	@-echo "OUTPUT = ${OUTPUT}"
	
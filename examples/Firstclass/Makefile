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
include /usr/local/share/luggage/luggage.make

TITLE=Firstclass_Install
REVERSE_DOMAIN=com.huronhs
PAYLOAD=\
	unbz2-applications-Firstclass.app \
	pack-library-files 

#  Change to the directory containing your .app file and Use 'tar cvfj filename.app.tar.bz2 your.app' 
#	to tar up the Application.  Make sure 'unbz2-applications-FILENAME.app' matches FILENAME.app.tar.bz2
#	(right down to the case) or else you will get errors.

pack-library-files: l_Library
	@sudo ${CP} -R ./Library/ ${WORK_D}/Library/
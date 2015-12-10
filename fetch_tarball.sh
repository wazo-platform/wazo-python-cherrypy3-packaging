#!/bin/sh
# Copyright (C) 2015 Avencall
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>

set -e

VERSION=$(cat VERSION)
FILENAME="cherrypy3_${VERSION}.orig.tar.gz"
URL="https://github.com/cherrypy/cherrypy/archive/${VERSION}.tar.gz"

rm -rf tmp
mkdir tmp
cd tmp

wget -nv -O "${FILENAME}" "${URL}"
tar xf "${FILENAME}"

cd ..
rsync -av "tmp/cherrypy-${VERSION}/" .


# The packaging information for python cherrypy in Wazo

This repository contains the packaging information for
[python-cherrypy](https://github.com/cherrypy/cherrypy).

To get a new version of python-cherrypy in the Wazo repository, set the
desired version in the `VERSION` file and increment the changelog.

[Jenkins](jenkins.wazo.community) will then retrieve and build the new version.


## Building Locally

To build on a test environment before submitting a change to production the following procedure can be used.

```sh
make -f debian/rules get-orig-source
tar -xvf ../wazo-python-cherrypy3-packaging_*.orig.tar.gz  --strip 1
dpkg-buildpackage -us -uc
```
The `.deb` will be located in the parent directory.

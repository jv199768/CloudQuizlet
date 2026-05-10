amavis
amavis
Repository
amavis
README.md
README.md
Juliano Guidini's avatar
 eb8c27ee
7 months ago
Solve test errors

Juliano Guidini authored 7 months ago
README.md
1.37 KiB
Installation
Use your system's amavis package if possible.

Prerequisites
Software dependencies are tracked via Dist::Zilla. Some of them involve non-perl development libraries and GCC as a build dependency if obtained from CPAN:

libdb
libidn2
libssl
libzmq3
On Debian 13 for example, one can install them via

apt-get install build-essential libdist-zilla-perl libdb-dev libidn2-dev libssl-dev libzmq3-dev
Obtaining the software
Choose a version, fetch the tarball and unpack it:

VERSION=master
curl -O https://gitlab.com/amavis/amavis/-/archive/$VERSION/amavis-$VERSION.tar.gz
gzip -d -c amavis-$VERSION.tar.gz | tar xvf -
cd amavis-$VERSION
Privileged installation
Run dzil install.
Prepare a configuration file, owned by root, possibly based on conf/amavisd.conf.
Prepare a dedicated user, e.g. vscan.
Create directories for $MYHOME, $db_home and $TEMPBASE.
Run sa-update.
Run amavisd -c /path/to/amavis.conf debug
Unprivileged installation
A purely unprivileged mode of operation and bootstrapping is not supported. In the end, the config file needs to be owned by root.

Moreover, perl's taint mode prohibits externally defined non-standard library paths, so running amavis from a local perl environment via local::lib will not work without code modifications.

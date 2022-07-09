#!/usr/bin/env bash

set -e -x

# Note: this script is meant to be run in a Debian/Ubuntu docker container,
# as user 'root'.

# Install the required tools for creating source packages.
apt-get -yq --no-install-suggests --no-install-recommends install\
     devscripts debhelper dput fakeroot

# Add the SSH key of ppa.launchpad.net to known_hosts.
mkdir -p ~/.ssh
echo '<VALUE> ssh-rsa  <BASE64_ENODED=>' >> ~/.ssh/known_hosts

# Build the source package and upload.
curl -X POST <<>>

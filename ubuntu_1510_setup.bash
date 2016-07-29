#!/usr/bin/env bash
#
# To run:
#
#   curl -sSL bit.ly/ct16madlibs > setup.bash
#   chmod +x setup.bash
#   ./setup.bash
#
# https://gorails.com/setup/ubuntu/15.10

set -e

# Install apt packages
sudo apt update
sudo apt dist-upgrade -y
sudo apt install -y \
     git-core \
     curl \
     zlib1g-dev \
     build-essential \
     libssl-dev \
     libreadline-dev \
     libyaml-dev \
     libsqlite3-dev \
     sqlite3 \
     libxml2-dev \
     libxslt1-dev \
     libcurl4-openssl-dev \
     python-software-properties \
     libffi-dev

# Create temp dir.
tmpdir=$(mktemp -d --tmpdir install-rails-XXXXXXX)
function cleanup() {
    rm -rf $tmpdir
}
trap cleanup EXIT

# Clone the repo to tmpdir.
git clone https://github.com/thomasvandoren/MadLibs $tmpdir/MadLibs

# Ensure we are in root of repo.
cd $tmpdir/MadLibs

# Setup rbenv.
if [ ! -d ~/.rbenv ] ; then
    pushd ~
    echo 'export RUBY_CONFIGURE_OPTS=--disable-install-doc' >> ~/.bashrc
    git clone https://github.com/rbenv/rbenv.git ~/.rbenv
    echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
    echo 'eval "$(rbenv init -)"' >> ~/.bashrc
    source ~/.bashrc

    git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
    echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
    source ~/.bashrc
    popd
else
    source ~/.bashrc
fi

# Install ruby.
rbenv install --skip-existing
rbenv global
ruby -v

# Installing bundler
gem install bundler
rbenv rehash

# Install NodeJS
echo "Installing nodejs..."
curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
sudo apt install -y nodejs
node --version
npm version

# Install rails!
gem install rails -v 4.2.6
rbenv rehash

# Ensure rails was installed correctly.
rails -v

# Install heroku toolbelt.
echo "Installing heroku toolbelt..."
wget -O- https://toolbelt.heroku.com/install-ubuntu.sh | sh
heroku version
heroku version

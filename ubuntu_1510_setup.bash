#!/usr/bin/env bash
#
# https://gorails.com/setup/ubuntu/15.10

set -e

# Install apt packages
echo "Running apt update..."
sudo apt update -qq
echo "Running apt dist-upgrade... (this can take a while)"
sudo apt dist-upgrade -yqq \
     >/dev/null \
     2>/dev/null
echo "Installing new packages..."
sudo apt install -yqq \
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
     libffi-dev \
     >/dev/null \
     2>/dev/null

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
fi

# Install ruby.
rbenv install --skip-existing
rbenv global
ruby -v

# Installing bundler
gem install bundler
rbenv rehash

# Install NodeJS
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
wget -O- https://toolbelt.heroku.com/install-ubuntu.sh | sh
heroku version
heroku version

#!/bin/bash

wget --quiet -P /tmp http://cache.ruby-lang.org/pub/ruby/2.1/ruby-2.1.0.tar.gz

pushd /tmp

tar xzf ruby-2.1.0.tar.gz
pushd ruby-2.1.0
./configure --prefix=$PREFIX
make && make install || exit 1

popd
rm -rf ruby-2.1.0
popd

cat << 'EOF' > ~/.gemrc
---
:update_sources: true
:benchmark: false
:backtrace: true
:verbose: true
gem: --no-ri --no-rdoc
install: --no-rdoc --no-ri
update:  --no-rdoc --no-ri
EOF

/usr/local/ruby/bin/gem install bundler


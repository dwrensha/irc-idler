#!/usr/bin/env sh
#
# Recompile sandstorm-irc-idler and run it with vagrant-spk

set -ex
pushd $(dirname $0)/cmd/sandstorm-irc-idler
go build
popd
cd $(dirname $0)
vagrant-spk dev

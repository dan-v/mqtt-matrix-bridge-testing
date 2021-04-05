#!/bin/bash

export PATH="$PATH:/usr/local/go/bin"
git clone https://github.com/derEisele/tuple.git
cd tuple
go build .
./tuple -broker tcp://mqtt-server:1883 -homeserver http://matrix-server:8008 -username test -password test
#!/bin/sh

bundle exec ruby parts_server_control.rb restart

tail -f /dev/null
#!/bin/sh

./migrate-db.sh

ruby parts_server_control.rb run
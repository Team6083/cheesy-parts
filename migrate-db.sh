#!/bin/sh

mv ./db/migrations ./db/migrations.tmp
mkdir ./db/migrations

mv ./db/migrations.tmp/001* ./db/migrations
mv ./db/migrations.tmp/002* ./db/migrations
mv ./db/migrations.tmp/003* ./db/migrations
mv ./db/migrations.tmp/004* ./db/migrations
bundle exec rake db:migrate

mv ./db/migrations.tmp/005* ./db/migrations
mv ./db/migrations.tmp/006* ./db/migrations
mv ./db/migrations.tmp/007* ./db/migrations
mv ./db/migrations.tmp/008* ./db/migrations
mv ./db/migrations.tmp/009* ./db/migrations
mv ./db/migrations.tmp/010* ./db/migrations
bundle exec rake db:migrate

mv ./db/migrations.tmp/* ./db/migrations
bundle exec rake db:migrate
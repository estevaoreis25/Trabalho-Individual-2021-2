#!/bin/bash
set -e

rm -f /myapp/tmp/pids/server.pid

bundle exec rails db:migrate 2>/dev/null || bundle exec rails db:setup

exec bundle exec "$@"
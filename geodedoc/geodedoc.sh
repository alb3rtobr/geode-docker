#!/bin/bash

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"

cd /geode/geode-book
bundle install
bundle exec bookbinder bind local
cd final_app
bundle install
rackup --host 0.0.0.0

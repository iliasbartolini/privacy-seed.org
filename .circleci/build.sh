#!/bin/sh

echo "Check ruby version"
ruby --version

echo "Bundle install dependencies"
bundle install

echo "Build"
bundle exec jekyll clean && JEKYLL_ENV=production bundle exec jekyll build

!#!/bin/sh

echo "Check ruby version"
ruby --version

echo "Bundle install dependencies"
bundle install

echo "Build"
JEKYLL_ENV=production && bundle exec jekyll clean && bundle exec jekyll build

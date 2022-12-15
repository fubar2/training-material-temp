#! /usr/bin/bash
cp Gemfile.backup Gemfile
cp Gemfile.lock.backup Gemfile.lock
git add Gemfile Gemfile.lock

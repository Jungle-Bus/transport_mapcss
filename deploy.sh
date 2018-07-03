#!/bin/bash

set -ev

git config user.name "Travis CI"
git config user.email "github@travis-ci.org"

rm -rf .git
git init

git add .
git commit --message "Deploy to GitHub Pages"
git push --force "${GIT_DEPLOY_REPO}" master:gh-pages

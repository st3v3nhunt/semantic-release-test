# Semantic Release Test

![Release](https://github.com/st3v3nhunt/semantic-release-test/workflows/Release/badge.svg)
[![semantic-release](https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079.svg)](https://github.com/semantic-release/semantic-release)

> Repo setup for testing out [semantic-release](https://github.com/semantic-release/semantic-release)

## Overview

* Commit messages are linted using
  [commitlint](https://github.com/conventional-changelog/commitlint/tree/master/@commitlint/cli)
  against the
  [conventional config](https://www.npmjs.com/package/@commitlint/config-conventional)
  * Run locally with [Husky](https://www.npmjs.com/package/husky)
  * Run for every push to the remote
* [semantic-release-replace-plugin](https://github.com/google/semantic-release-replace-plugin)
  is used to updated `package.json` and `package-lock.json` post release
* [Version tag format](https://semantic-release.gitbook.io/semantic-release/usage/configuration#tagformat)
  is `X.Y.Z` (dropping the `v` from the default)
* [CHANGELOG](CHANGELOG.md) is updated with changes on every release

## Changes for commit testing

* Add new feature
* feat!: something new and breaking. Seems like `BREAKING CHANGE:` must be in
  body for this to work, even with the exclamation
* feat: some message \n\n BREAKING CHANGE: break
* fix: squash a bug

## To do

* Update `X` and `X.Y` tags on publish
* Get `CHANGELOG` in repo working

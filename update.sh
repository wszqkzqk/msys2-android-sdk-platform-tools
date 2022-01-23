#!/bin/bash
cd `dirname $0`; pwd
updpkgsums
makepkg --printsrcinfo > .SRCINFO
git add PKGBUILD .SRCINFO update.sh license.html
git commit -m 'Updated by update.sh'
git push -u git@github.com:wszqkzqk/msys2-android-sdk-platform-tools.git


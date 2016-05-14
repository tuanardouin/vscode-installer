#!/bin/bash
. ./lib/build/vscode.sh

function sabayon-build {
  # Get dependencies
  sudo equo i net-libs/nodejs sys-devel/base-gcc sys-devel/gcc sys-libs/glibc \
    dev-vcs/git gnome-base/gnome-keyring gnome-base/libgnome-keyring x11-libs/libX11

  if ! `comex gulp`; then
    sudo npm install -g gulp
  fi

  vscode-build
}

export -f sabayon-build

#!/usr/bin/env bash

packages=(
  "Lil-Dank/lazygit"
  "yazi-rs/plugins:git"
  "yazi-rs/plugins:mount"
  "uhs-robert/sshfs"
)

for package in "${packages[@]}"; do
  if ya pkg list | grep -qF "$package "; then
    echo " - $package already installed"
  else
    ya pkg add "$package"
  fi
done

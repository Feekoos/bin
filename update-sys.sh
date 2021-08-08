#!/bin/sh

freebsd-update fetch
freebsd-update install
pkg update -f
pkg upgrade
pkg clean
pkg autoremove
pkg audit -F


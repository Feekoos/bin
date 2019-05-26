#!/bin/sh

freebsd-update fetch
freebsd-update install
pkg update -f
pkg upgrade
pkg clean
pkg audit -F

#!/bin/sh

abook --convert --informat vcard --infile $1 --outformat abook --outfile addressbook1

# cp addressbook1 .abook/addressbook

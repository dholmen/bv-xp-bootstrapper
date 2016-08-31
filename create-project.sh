#!/bin/bash

CHECKOUTDIR=$TMPDIR/bv-xp-bootstrapper

if [ -z "$TMPDIR" ]; then
  echo "No \$TMPDIR variable defined. Cloning into current directory instead."
  CHECKOUTDIR=./bv-xp-bootstrapper
fi

if [ -d "$CHECKOUTDIR" ]; then
  rm -rf $CHECKOUTDIR
fi

mkdir $CHECKOUTDIR

git clone https://git.bouvet.no/scm/exm/enonic-xp-vanilla-starter.git $CHECKOUTDIR

source $CHECKOUTDIR/scripts/setup/create-project.sh

rm -rf $CHECKOUTDIR

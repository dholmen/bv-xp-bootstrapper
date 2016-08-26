#!/bin/bash

CHECKOUTDIR=$TMPDIR/bv-xp-bootstrapper

if [ -d "$CHECKOUTDIR" ]; then
  rm -rf $CHECKOUTDIR
  echo "fins"
fi

mkdir $CHECKOUTDIR

git clone https://git.bouvet.no/scm/exm/enonic-xp-vanilla-starter.git $CHECKOUTDIR

source $CHECKOUTDIR/scripts/setup/create-project.sh

rm -rf $CHECKOUTDIR


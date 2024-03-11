#!/usr/bin/env bash
cd $1
BRANCH=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
STATUS=$(git status --porcelain 2>/dev/null| egrep "^(M| M)" | wc -l)
if test "$BRANCH" != ""; then
  if test "$STATUS" = "0"; then
    echo "#[fg=green,bg=#9BE206,nobold,noitalics,nounderscore] #[fg=black,bg=green,bold]   $BRANCH  "
  else
    echo "#[fg=black,bg=#9BE206,bold]   $BRANCH  "
  fi
fi

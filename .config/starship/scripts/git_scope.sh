#!/bin/sh

printf "%s (%s)" \
  "$(if [ -n "$GIT_AUTHOR_EMAIL" ]; then echo "$GIT_AUTHOR_EMAIL"; else git config user.email; fi)" \
  "$(if [ -n "$GIT_AUTHOR_NAME" ]; then echo "$GIT_AUTHOR_NAME"; else git config user.name; fi)"


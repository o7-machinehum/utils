#!/bin/sh

git filter-branch --env-filter '

OLD_EMAIL="machinehum@fb.com"
OLD_NAME="machinehum-o7"

CORRECT_NAME="Machine-Hum"
CORRECT_EMAIL="ryan.cjw@gmail.com"

if [ "$GIT_COMMITTER_NAME" = "$OLD_NAME" ]
then
export GIT_COMMITTER_NAME="$CORRECT_NAME"
export GIT_COMMITTER_EMAIL="$CORRECT_EMAIL"
fi
if [ "$GIT_AUTHOR_EMAIL" = "$OLD_EMAIL" ]
then
export GIT_AUTHOR_NAME="$CORRECT_NAME"
export GIT_AUTHOR_EMAIL="$CORRECT_EMAIL"
fi
' --tag-name-filter cat -- --branches --tags

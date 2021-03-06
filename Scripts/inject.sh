#! /bin/sh -e

SCRIPTPATH=$(dirname "$0")
TEMPLATES=${TEMPLATES:-"$SCRIPTPATH/../Templates"}

if [ -z "SOURCERY_BINPATH" ]; then
  SOURCERY_BINPATH="$SOURCERY_BINPATH"
elif [ -f "$PODS_ROOT/Sourcery/bin/sourcery" ]; then
  SOURCERY_BINPATH="$PODS_ROOT/Sourcery/bin/sourcery"
else
  SOURCERY_BINPATH="sourcery"
fi

set -x

"$SOURCERY_BINPATH" --templates "$TEMPLATES" --sources "$SRCROOT" --output "$SRCROOT/Generated/" "$@"
# ./Pods/Sourcery/bin/sourcery --templates ./Templates 

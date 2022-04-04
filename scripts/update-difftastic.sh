#!/usr/bin/env bash

TEMPDIR=$(mktemp -d)

function cleanup {
  rm -rf "$TEMPDIR"
}
trap cleanup EXIT

SELF_NAME="$(basename "${BASH_SOURCE[0]}")"
TARGET_BREW="$(echo "${SELF_NAME##update-}" | sed 's/.sh//')" 

CURRENT_DIR="$PWD"

cd "$TEMPDIR"

VERSION_TAG="$(curl --silent https://api.github.com/repos/Wilfred/difftastic/tags | jq -r '.[0].name')"

echo "[INFO] $TARGET_BREW veresion => $VERSION_TAG"
if [ "$VERSION_TAG" = "" ]; then
  exit 0
fi

if ! grep -q "version '$VERSION_TAG'" "$CURRENT_DIR/Formula/$TARGET_BREW.rb"; then
  OLD_VERSION="$(grep "version '" "$CURRENT_DIR/Formula/$TARGET_BREW.rb" | sed -e 's/^[[:space:]]*//')"
  NEW_VERSION="version '$VERSION_TAG'"

  TEMP_FILE_NAME="$TARGET_BREW-$VERSION_TAG.tar.gz"

  echo "[INFO] detects different version."
  echo "[INFO] new version: $VERSION_TAG"

  curl --silent -L -o "./$TEMP_FILE_NAME" "https://github.com/Wilfred/difftastic/archive/refs/tags/$VERSION_TAG.tar.gz"
  SHASUM="$(shasum -a 256 "$TEMP_FILE_NAME" | awk '{ print $1 }')"
  echo "[INFO] sha256: $SHASUM"

  OLD_SHA256="$(grep "sha256 '" "$CURRENT_DIR/Formula/$TARGET_BREW.rb" | sed -e 's/^[[:space:]]*//')" 
  NEW_SHA256="sha256 '$SHASUM'"

  perl -i -p -e "s/$OLD_VERSION/$NEW_VERSION/g" "$CURRENT_DIR/Formula/$TARGET_BREW.rb"
  perl -i -p -e "s/$OLD_SHA256/$NEW_SHA256/g" "$CURRENT_DIR/Formula/$TARGET_BREW.rb"
fi

# vim: filetype=sh foldmethod=marker expandtab softtabstop=2 shiftwidth=2

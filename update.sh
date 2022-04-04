#!/usr/bin/env bash

SCRIPT_DIR="$(cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd)"
TARGET_DIR="$SCRIPT_DIR/scripts"

UPDATE_SCRIPTS="$(ls -1 "$SCRIPT_DIR")"

for TARGET_SCRIPT in $(find "$TARGET_DIR" -name '*.sh' | sort )
do
  TARGET_FILE="${TARGET_SCRIPT##$TARGET_DIR/}"
  echo "[EXEC] $TARGET_FILE"
  bash "$TARGET_DIR/$TARGET_FILE"
done

# vim: filetype=sh foldmethod=marker expandtab softtabstop=2 shiftwidth=2

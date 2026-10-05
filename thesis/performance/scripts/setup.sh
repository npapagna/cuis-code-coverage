#!/usr/bin/env bash
set -euo pipefail

# Builds a workspace to rerun the performance measurements, with every
# repository at the commit the thesis used. The workspace is kept apart
# from the one thesis/bin/run.sh uses, which pins a different Cuis.

WORKSPACE="${1:?usage: setup.sh <workspace-dir>}"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$SCRIPT_DIR/../../.."

clone_at_commit() {
    local url="$1" dir="$2" commit="$3"
    git init -q "$dir"
    git -C "$dir" remote add origin "$url"
    git -C "$dir" fetch -q --depth 1 origin "$commit"
    git -C "$dir" checkout -q --detach FETCH_HEAD
}

if [ -e "$WORKSPACE" ] && [ -n "$(ls -A "$WORKSPACE")" ]; then
    echo "$WORKSPACE is not empty" >&2
    exit 1
fi
mkdir -p "$WORKSPACE"

clone_at_commit https://github.com/Cuis-Smalltalk/Cuis-Smalltalk-Dev.git "$WORKSPACE/Cuis-Smalltalk-Dev" b221722348cc46ebb9f5d9f3a057a3f361aa3d55
clone_at_commit https://github.com/Cuis-Smalltalk/Measures.git "$WORKSPACE/Measures" 05aa02aada64f7b64898a5e1452ae8fb76f79427
clone_at_commit https://github.com/Cuis-Smalltalk/Calendars.git "$WORKSPACE/Calendars" 0c957afc0c8feb255ac29ae70646e8f96ba4b731

# The tag holds CodeCoverage 1.95 (db19de0) plus these scripts.
git -c advice.detachedHead=false clone -q --branch thesis-performance "$REPO_ROOT" "$WORKSPACE/cuis-code-coverage"

cp "$SCRIPT_DIR"/Profile*.sh "$SCRIPT_DIR"/MethodCoverageProfilerOverrides.st "$WORKSPACE/Cuis-Smalltalk-Dev/"

echo "Workspace ready. Run the measurement scripts from $WORKSPACE/Cuis-Smalltalk-Dev"

#!/usr/bin/env bash
set -euo pipefail

CUIS_REPO_URL="git@github.com:Cuis-Smalltalk/Cuis-Smalltalk-Dev.git"
CUIS_COMMIT="77a14005b636693f8bb0b91576084b745dfb4787"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CUIS_DIR="$SCRIPT_DIR/../Cuis-Smalltalk-Dev"

if [ -d "$CUIS_DIR/.git" ]; then
    if [ "$(git -C "$CUIS_DIR" rev-parse HEAD)" = "$CUIS_COMMIT" ] && [ -z "$(git -C "$CUIS_DIR" status --porcelain)" ]; then
        : # already at the expected commit with a clean working tree
         cd Cuis-Smalltalk-Dev
    else
        git -C "$CUIS_DIR" fetch --depth 1 origin "$CUIS_COMMIT"
        git -C "$CUIS_DIR" reset --hard "$CUIS_COMMIT"
        cd Cuis-Smalltalk-Dev
        ./RunCuisOnMac.sh -d "[ TranscriptWindow allInstancesDo: [ :window | window delete ]. Smalltalk saveAndQuit ] fork"
    fi
else
    mkdir -p "$CUIS_DIR"
    git -C "$CUIS_DIR" init
    git -C "$CUIS_DIR" remote add origin "$CUIS_REPO_URL"
    git -C "$CUIS_DIR" fetch --depth 1 origin "$CUIS_COMMIT"
    git -C "$CUIS_DIR" reset --hard "$CUIS_COMMIT"
    cd Cuis-Smalltalk-Dev
    ./RunCuisOnMac.sh -d "[ TranscriptWindow allInstancesDo: [ :window | window delete ]. Smalltalk saveAndQuit ] fork"
fi

./RunCuisOnMac.sh \
  -r CodeCoverageDemo \
  -d "Workspace open model actualContents: 'Smalltalks2022Presentation openInWorld.'"
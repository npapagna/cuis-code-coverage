#!/usr/bin/env bash
set -euo pipefail

CUIS_REPO_URL="git@github.com:Cuis-Smalltalk/Cuis-Smalltalk-Dev.git"
CUIS_COMMIT="77a14005b636693f8bb0b91576084b745dfb4787"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$SCRIPT_DIR/../.."
CUIS_DIR="$REPO_ROOT/Cuis-Smalltalk-Dev"

cd "$REPO_ROOT"

rm -rf Cuis-MCPServer
git clone --depth 1 git@github.com:hernanwilkinson/Cuis-MCPServer.git

rm -rf cuis-finder-asWidget
git clone --depth 1 https://github.com/hernanwilkinson/cuis-finder-asWidget.git

clone_at_commit() {
    local url="$1" dir="$2" commit="$3"
    rm -rf "$dir"
    git init "$dir"
    git -C "$dir" remote add origin "$url"
    git -C "$dir" fetch --depth 1 origin "$commit"
    git -C "$dir" checkout --detach FETCH_HEAD
}

clone_at_commit git@github.com:Cuis-Smalltalk/Measures.git Measures 05aa02aada64f7b64898a5e1452ae8fb76f79427
clone_at_commit git@github.com:Cuis-Smalltalk/Calendars.git Calendars 0c957afc0c8feb255ac29ae70646e8f96ba4b731

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
  -r MCPServer \
  -r Tools-Finder \
  -r ThesisDefense \
  -r CodeCoverageDemo \
  -d "Workspace open model actualContents: 'Smalltalks2022Presentation openInWorld.
ThesisDefensePresentation open.'" \
  -d "(MCPServer servingOverHttpAtPort: 2358) run"
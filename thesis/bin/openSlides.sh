#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CUIS_DIR="$SCRIPT_DIR/../../Cuis-Smalltalk-Dev"

cd "$CUIS_DIR"

./RunCuisOnMac.sh \
  -r Tools-Finder \
  -r ThesisDefense \
  -r CodeCoverageDemo \
  -d "ThesisDefensePresentation open."

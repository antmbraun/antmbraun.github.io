#!/bin/sh
# Regenerate Anthony_Braun_resume.pdf from index.html using headless Chrome's print layout.
set -e
cd "$(dirname "$0")"
CHROME="${CHROME:-/Applications/Google Chrome.app/Contents/MacOS/Google Chrome}"
"$CHROME" --headless=new --disable-gpu --no-pdf-header-footer \
  --print-to-pdf="$PWD/Anthony_Braun_resume.pdf" "file://$PWD/index.html" 2>/dev/null
echo "Wrote $PWD/Anthony_Braun_resume.pdf"

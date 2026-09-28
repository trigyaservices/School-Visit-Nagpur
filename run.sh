#!/bin/bash
echo "===================================================="
echo "🚀 Starting SCHOOL VISIT Dashboard"
echo "===================================================="
node build.js
if command -v python3 &>/dev/null; then
  echo "Serving on http://localhost:8000 via Python 3..."
  cd dist && python3 -m http.server 8000
elif command -v npx &>/dev/null; then
  echo "Serving on http://localhost:8000 via npx serve..."
  npx serve dist -p 8000
fi

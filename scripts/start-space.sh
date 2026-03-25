#!/bin/sh
set -eu

cat > /app/dist/env.js <<EOF
window.__APP_ENV__ = {
  VITE_SUPABASE_URL: "${VITE_SUPABASE_URL:-}",
  VITE_SUPABASE_PUBLISHABLE_KEY: "${VITE_SUPABASE_PUBLISHABLE_KEY:-}"
};
EOF

serve -s /app/dist -l "${PORT:-7860}"
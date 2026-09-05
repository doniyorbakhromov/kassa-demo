#!/usr/bin/env bash
# Vercel uchun build skripti.
# Vercel muhitida Flutter yo'q - shuning uchun uni yuklab olamiz.
set -euo pipefail

if ! command -v flutter >/dev/null 2>&1; then
  echo "==> Flutter yuklanmoqda (stable)..."
  git clone --depth 1 --branch stable \
    https://github.com/flutter/flutter.git "$HOME/flutter"
  export PATH="$HOME/flutter/bin:$PATH"
fi

flutter --version
flutter config --no-analytics >/dev/null 2>&1 || true
flutter pub get

echo "==> Web build (namoyish versiyasi - bulutsiz)..."
flutter build web --release

echo "==> Tayyor: build/web"

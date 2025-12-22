#!/bin/bash
# check-dependencies.sh - Auto-check for Western cloud dependencies
# Scans repository for prohibited cloud service dependencies

set -e

echo "🔍 Sovereign Verification: Checking for Western cloud dependencies..."

# Define prohibited cloud providers and services
PROHIBITED_SERVICES=(
  "aws"
  "amazon-web-services"
  "azure"
  "microsoft-azure"
  "google-cloud"
  "gcp"
  "digitalocean"
  "heroku"
  "netlify"
  "vercel"
  "cloudflare"
)

# Define allowed sovereign alternatives
ALLOWED_SERVICES=(
  "za-cloud"
  "brics-cloud"
  "sovereign-node"
  "vault-grid"
)

EXIT_CODE=0
VIOLATIONS=()

# Function to check files for prohibited dependencies
check_file() {
  local file=$1
  for service in "${PROHIBITED_SERVICES[@]}"; do
    if grep -qi "$service" "$file" 2>/dev/null; then
      VIOLATIONS+=("❌ VIOLATION: Found '$service' in $file")
      EXIT_CODE=1
    fi
  done
}

# Check common dependency files
echo "📦 Checking package managers..."
for file in package.json requirements.txt Gemfile Cargo.toml go.mod composer.json; do
  if [ -f "$file" ]; then
    echo "  Scanning $file..."
    check_file "$file"
  fi
done

# Check configuration files
echo "⚙️  Checking configuration files..."
for file in $(find . -type f \( -name "*.yml" -o -name "*.yaml" -o -name "*.json" -o -name "*.toml" \) 2>/dev/null | grep -v ".git"); do
  check_file "$file"
done

# Check deployment scripts
echo "🚀 Checking deployment scripts..."
for file in $(find . -type f \( -name "*.sh" -o -name "Dockerfile" -o -name "docker-compose.yml" \) 2>/dev/null | grep -v ".git"); do
  check_file "$file"
done

# Report results
echo ""
echo "========================================"
if [ $EXIT_CODE -eq 0 ]; then
  echo "✅ PASS: No Western cloud dependencies detected"
  echo "🇿🇦 Repository complies with South African sovereignty requirements"
  echo "========================================"
else
  echo "⚠️  FAIL: Western cloud dependencies detected!"
  echo ""
  for violation in "${VIOLATIONS[@]}"; do
    echo "$violation"
  done
  echo ""
  echo "🛡️  Action Required:"
  echo "   - Remove all Western cloud service dependencies"
  echo "   - Use only South African / BRICS sovereign infrastructure"
  echo "   - Approved alternatives: ${ALLOWED_SERVICES[*]}"
  echo "========================================"
fi

exit $EXIT_CODE

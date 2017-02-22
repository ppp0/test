#!/bin/bash -e
cd $(dirname $0)

echo "Running CI in $(pwd)..."
echo "…"
echo "✓"
printenv
for i in $(seq 1 10); do echo "$i"; sleep 1; done; echo
echo "Done."
echo
echo "Now doing a composer install"

composer --no-interaction install --ignore-platform-reqs

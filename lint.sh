#!/bin/sh

set -e

echo "Formatting..."
echo "--- Ruff ---"
ruff format scrapesession
echo "--- isort ---"
isort scrapesession

echo "Checking..."
echo "--- Flake8 ---"
flake8 scrapesession
echo "--- pylint ---"
pylint scrapesession
echo "--- mypy ---"
mypy scrapesession
echo "--- Ruff ---"
ruff check scrapesession
echo "--- pyright ---"
pyright scrapesession

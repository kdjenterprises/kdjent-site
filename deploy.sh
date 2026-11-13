#!/bin/bash
# Copies the public site into public_html. Run by the cPanel cron job after a git pull.
# Only files in site/ are copied. PHP files, the help desk (desk/), books/, setup/ and
# anything else already in public_html are left alone.
set -e
cd "$(dirname "$0")"
cp -R site/. "$HOME/public_html/"

# kdjent.com public pages

The public, static part of https://kdjent.com (KDJ Enterprises LLC).

- `site/` is copied into the hosting account's `public_html` by `deploy.sh`.
- `site/status/` is the public app status page; `site/status/status.json` is refreshed by a scheduled agent.
- Server-side files (contact and camera request forms, Stripe checkout, the help desk) stay on the host and are NOT in this repo. Never commit keys, passwords or `.env` files here: this repo is public.
- No prices on the public site (Kory, Nov 13, 2026).
- No em dashes in site text.

How it goes live: the hosting account's cPanel Git Version Control has a clone of this repo, and a cron job runs `git pull` and then `deploy.sh` every 15 minutes.

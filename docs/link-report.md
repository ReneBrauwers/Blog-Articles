# Link report (generated 2026-10-28)
There are 420 unique absolute link targets (`href` or markdown links) across `_posts`. Each is listed in `link-report.csv`.

| Category | Count | Action |
|---|---|---|
| internal-updated | 14 | Links to old blog hosts (blog.brauwers.nl, *.azurewebsites.net) rewritten to the new post path |
| external-ok | 40 | Returned 2xx/3xx; left unchanged |
| unknown (401/403/429) | 1 | Would have been left unchanged |
| wayback | 82 | Dead; rewritten to the closest Wayback snapshot (confirmed with the availability API) |
| unavailable | 49 | Dead and no snapshot; rewritten to `/link-unavailable/?url=<encoded>` |
| removed-spam | 10 | Injected biturlz.com pharma-spam anchors (WordPress hack residue); removed |
| deferred-image(PR2) | 224 | Image links on the dead image hosts; handled by PR #2 |

Method: HEAD, falling back to GET, with a 15 s timeout, 3 retries and 6 checks at a time.

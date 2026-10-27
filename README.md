# Blog-Articles → blog.reneb.au

This is the archive of Rene Brauwers' integration/Azure blog (2011–2019). It is built with [Hugo](https://gohugo.io) and published to GitHub Pages at https://blog.reneb.au.

## Writing a new post
1. Run `scripts/new-post.sh "My post title"`. This creates `_posts/<year>/my-post-title.md`. You can also copy any file in `_posts/` and edit its front matter yourself; you need at least `title` and `date`.
2. Put the images in `assets/images/uploads/<year>/<month>/` and reference them as `/assets/images/uploads/<year>/<month>/file.png`.
3. Diagrams: use a fenced ```` ```mermaid ```` block. It is rendered in the browser.
4. Commit and push to `master`. GitHub Actions builds the site and deploys it; a pull request only builds it.

The URL of a new post is `/<yyyy>/<mm>/<dd>/<file-name>/`. Imported posts keep their original WordPress URLs through the `url:` field in their front matter.

## Preview locally
Run `hugo server`. This needs Hugo extended 0.152 or later. Then open http://localhost:1313.

## Configuration
In `hugo.toml`, `params.umamiWebsiteId` sets the Umami analytics ID. Set it to `""` to disable analytics.

Notes:
- The custom domain is set by `static/CNAME`.
- Dead external links point to Wayback snapshots, or to `/link-unavailable/?url=...` when no snapshot exists. See `docs/link-report.csv`.

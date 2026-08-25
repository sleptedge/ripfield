# Changelog

## Unreleased

### Changed

- Finished the Ripfield rename across the runtime, UI defaults, types, tests, tooling, repository
  templates, and generated project names. The public `CreateWindow` and control API is unchanged,
  but old brand-named globals and aliases are intentionally gone.
- Moved built-in assets and default persistence names under Ripfield-owned paths.
- Replaced the external documentation dependency with a practical local API guide and updated all
  contribution and security links for this repository.
- Added a raw-main bundle distribution path alongside versioned release assets, checksum guidance,
  and release validation to make installs less sensitive to GitHub's `latest` redirect.
- Clarified MPL-2.0 licensing for Ripfield modifications while preserving the inherited copyright
  notices required for upstream files.
- Tightened the cobalt palette, added a quiet topbar divider, and made overflowing tabs easier to
  spot and scroll without changing the basic layout.
- Search now matches tab names and control descriptions too. It was weird that it did not. Fixed.

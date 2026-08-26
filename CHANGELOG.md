# Changelog

## Unreleased

### Changed

- Gave the whole interface a calmer, cleaner pass. Surfaces have more depth, corners are less
  bubbly, and the cobalt theme is easier to read without turning everything bright blue.
- Search finally uses the active theme instead of painting a nearly invisible white bar on light
  themes. Scrollable areas are easier to spot too.
- Top-bar buttons are less fiddly to click, and popups, notices, and quick messages now leave room
  around the edge of smaller screens. This was overdue.
- Large windows can now wait until every tab is built before opening. No more watching the last
  page finish assembling after the menu is already on screen.

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

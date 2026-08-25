<!--
Thank you for contributing to Ripfield.

Target pull requests at `dev`. Keep public documentation changes in this repository.

Complete every applicable section and remove placeholder text. Do not include
vulnerability details in a public pull request; use
https://github.com/sleptedge/ripfield/security/advisories/new.
-->

## Summary

<!-- What changed, why is it needed, and what user or developer impact does it have? -->

## Related issue

<!-- Use "Closes #123" when merging should close the issue or "Refs #123" otherwise. -->

Closes #

## Change type

- [ ] Bug fix
- [ ] Feature
- [ ] Refactor or maintenance
- [ ] Build, tooling, or CI
- [ ] Breaking change

## Changes

<!-- Describe the important implementation decisions and files or systems affected. -->

-

## Compatibility and breaking changes

<!--
Cover affected public APIs, configuration, themes, persisted data, Roblox Studio,
and supported executors. Write "None" when there is no compatibility impact.
-->

- Breaking change: <!-- Yes or no -->
- Migration required: <!-- Yes or no; include instructions when applicable -->
- Compatibility notes:

## Validation

- [ ] I ran `make ci`, including the coverage threshold, or explained below why it does not apply.
- [ ] I added or updated automated or Roblox-hosted tests where practical.
- [ ] I completed applicable manual testing in Roblox Studio or the affected environment.
- [ ] I tested the affected compatibility paths.

### Test scenarios and results

<!-- List commands, environments, scenarios, and results. -->

-

## Documentation coordination

<!--
Update README, examples, comments, and type definitions in this repository when the
change affects public documentation.
-->

- Public documentation impact: <!-- None or describe the required update -->
- In-repository comments, examples, or types updated:

## UI evidence

<!-- UI changes require before-and-after screenshots or recordings. Otherwise write "Not applicable." -->

| Before | After |
| --- | --- |
| <!-- Image or recording --> | <!-- Image or recording --> |

## Checklist

- [ ] This pull request targets `dev`.
- [ ] The change is focused and contains no unrelated work.
- [ ] I reviewed my own changes.
- [ ] Tests cover the change where practical.
- [ ] Coverage did not drop below the enforced threshold.
- [ ] Public documentation is unaffected, or I updated it in this pull request.
- [ ] Required code comments, examples, and types match the resulting behavior.
- [ ] I did not commit generated files such as `roblox.yml`, `sourcemap.json`, `globalTypes.d.luau`, or `build/`.
- [ ] This pull request contains no publicly disclosed vulnerability details.

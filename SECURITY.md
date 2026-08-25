# Security Policy

The Ripfield maintainers welcome responsible reports about vulnerabilities in official Ripfield
source and release bundles.

## Reporting

Do not open a public issue for a suspected vulnerability. Use GitHub's private vulnerability
reporting form:

https://github.com/sleptedge/ripfield/security/advisories/new

Include the affected version or commit, environment, minimal reproduction, impact, relevant logs,
and any suggested mitigation. Please allow maintainers reasonable time to investigate before public
disclosure.

## Scope

In scope are reproducible vulnerabilities caused by unmodified Ripfield code, including unintended
code execution, injection, unsafe persistence behavior, compromised official distribution, or a
dependency vulnerability with demonstrated impact on Ripfield.

Executor, Roblox, or third-party service issues not caused by Ripfield are out of scope. So are
detection-evasion requests, account moderation disputes, and reports that cannot be reproduced
against an official Ripfield commit or release. A malware or antivirus detection alone does not
establish a vulnerability; include the exact file, hash, source URL, and scanner result so the
official artifact can be compared.

Use an official release or the raw bundle linked from the README whenever possible. Never include
credentials, account cookies, personal data, or secrets in a report.

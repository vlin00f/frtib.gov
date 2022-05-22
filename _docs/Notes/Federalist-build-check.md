---
layout: docpage
title: Federalist build check
styles:
scripts:
#  - /assets/js/jquery.min.js
permalink: /:collection/:path
completed: false
# redirect_from: /docs/Notes/
#document-ready:
#  - getRate();
---

## {{page.title}}

<h3 class="usa-sr-only">steps for {{page.title}}</h3>
{% assign accStep = 0 -%}

Part of the standard USWDS/Federalist template (2.0) is automated build when a branch is changed.  Only a branch that has built successfully should be merged into *main*.

If the build of a branch on Federlist fails the preview (or production) site will not be updated with the content....

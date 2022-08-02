---
layout: docpage
title: Complete documentation page
description: Mark doc page as complete/incomplete
styles:
scripts:
#  - /assets/js/jquery.min.js
permalink: /:collection/:path/
completed: false
# redirect_from: /docs/Documentation/
#document-ready:
#  - getRate();
---

## {% include docs/page-complete page=page -%}{{page.title}}

<h3 class="usa-sr-only">steps for {{page.title}}</h3>
{% assign accStep = 0 -%}

{{page.description}}


In the frontmatter of every doc page is a *completed:* tag.  If this value is set to false then the top title header on the page will have a red <span class="red bigger">*</span> as a prefix.  

&nbsp; &nbsp; &nbsp; <b><bigger><span class="red">*</span>{{page.title}}</bigger></b>

Additionally, the same marker prefix will be on the [docs landing page]({{site.baseurl}}/docs) for that entry.  This indicates the page hasn't been reviewed and completed.  It is simply a visual reminder to finish the page and has no other effect.

Once the page is complete set *completed:* to true and the markers go away.

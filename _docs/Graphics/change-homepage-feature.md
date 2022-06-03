---
layout: docpage
title: feature image
description: Change homepage feature image in footer
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

See the image discussion [here]({{site.baseurl}}/docs/Graphics/)

#### Update/replace Homepage Feature Images

Move feature images (root) to _assets/img/

Open _includes/home/footer-feature-section

Look for % capture left to edit the link, text and image on the left column.

Look for % capture right-header to edit the link, text and image on the right column.

Save footer-feature-section

Once old images are no longer in use, move to *__unused-images* to archive

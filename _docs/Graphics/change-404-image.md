---
layout: docpage
title: 404 image
description: Change 404 image
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

#### Update/replace 404.html graphic

Move new 404 graphic image to _assets/img/hero

Open 404.html (at the root)

Look for div class="usa-card__img" and edit the line asset hero/NEW GRAPHIC NAME HERE alt="404 Page Not Found"

Save 404.html

Once old images are no longer in use, move to *__unused-images* to archive

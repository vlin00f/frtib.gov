---
layout: docpage
title: banner image
description: Change subpage banner image
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

#### Update Subpage Banner Images

Move banner image(s) to _assets/img/

Go to _pages/ and choose the landing page's folder that needs to be unedited

Open _pages/FOLDER/index.md

Look for card_img= and edit the image name, and altText

Save index.md

Once old images are no longer in use, move to *__unused-images* to archive

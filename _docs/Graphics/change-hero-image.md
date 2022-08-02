---
layout: docpage
title: hero image
description: Change hero image on homepage
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

#### Update/replace Hero image on homepage

Move hero image to _assets/img/hero

Copy hero image name

Open _assets/css/frtib/other.scss

Scroll to find .usa-hero

Edit background-image: asset_url("hero/PASTE HERO IMAGE NAME HERE");

Save other.scss


Once old images are no longer in use, move to *__unused-images* to archive

---
layout: docpage
title: data.json
description: update data.json file
styles:
scripts:
#  - /assets/js/jquery.min.js
permalink: /:collection/:path/
completed: false
# redirect_from: /docs/Notes/
#document-ready:
#  - getRate();
---

## {% include docs/page-complete page=page -%}{{page.title}}

<h3 class="usa-sr-only">steps for {{page.title}}</h3>
{% assign accStep = 0 -%}

{{page.description}}

[data.json]({{site.baseurl}}/data.json) file provided by CDO

The data file is read by data.gov to list public data sets available from [FRTIB](https://catalog.data.gov/dataset?q=frtib){: target="_blank"}.

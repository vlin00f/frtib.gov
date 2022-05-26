---
layout: docpage
title: Add job
descritpion: Add a job opening to the careers page
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

{{page.description}}?

{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="Discussion" -%}
You will get a request from ....
{% include accordion/end-steps -%}


{% include docs/make-branch -%}

Add page aobut auto appearance and remvoal of jobs

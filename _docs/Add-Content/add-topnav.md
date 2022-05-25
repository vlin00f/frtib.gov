---
layout: docpage
title: Add top navigation
description: Add a link in the header area just below the seal.
styles:
scripts:
#  - /assets/js/jquery.min.js
permalink: /:collection/:path/
completed: false
# redirect_from: /docs/Add-Content/
#document-ready:
#  - getRate();
---

## {% include docs/page-complete page=page -%}{{page.title}}

<h3 class="usa-sr-only">steps for {{page.title}}</h3>
{% assign accStep = 0 -%}

{{page.description}}

If you are adding a link to the list at the top of the pages just under the seal you are probably adding a new page.  You should follow the steps outlined [there]({{site.baseurl}}/docs/Add-Content/add-page).

As a summary you will follow the usual steps to make a branch, make changes, get approval and merge but specifically you will need to edit the *top_navigation* block in *_data/navigation.yml* file to add the link.  You can add a link for a page already on the site or a url that is offsite by doing that step and skipping the steps to add a new page.

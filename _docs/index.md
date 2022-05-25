---
layout: docpage
title: Documentation
styles:
scripts:
#  - /assets/js/jquery.min.js
permalink: /:collection/
completed: false
redirect_from: /documention/
#document-ready:
#  - getRate();
---

## {% include docs/page-complete page=page -%}{{page.title}}

How-to pages for frtib.gov maintenance.

{% comment -%}Get documentation home page{% endcomment -%}
{% for docpage in site.docs -%}{% unless docpage.path != "_docs/index.md" -%}
{% assign landing = docpage -%}
{% endunless -%}{% endfor -%}

{% comment -%}Get current page path{% endcomment -%}
{% assign curURL = page.url | split: '/' | pop | join: '/' -%}
{% assign lastURL = "" -%}

{% for docpage in site.docs -%}{% unless docpage.path == landing.path -%}{% unless docpage.title == "Index" -%}
{% assign docURL = docpage.url | split: '/' | pop | join: '/' -%}
{% if docURL != lastURL -%}
  <h3>{{ docURL | remove_first: '/docs/' }}</h3>
  {% assign lastURL = docURL -%}
{% endif -%}
{% include docs/page-complete page=docpage -%}

[{{docpage.title}}]({{site.baseurl}}{{docpage.url}}){% if docpage.description -%}&nbsp; - {% endif -%}{{docpage.description}}

{% endunless -%}{% endunless -%}{% endfor -%}

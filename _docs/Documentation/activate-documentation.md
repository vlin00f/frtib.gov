---
layout: docpage
title: Activate documentation
description: Show/Hide documentation pages in current branch
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


The development and maintenance documentation for this site is maintained as a collection stored in *_docs*.  Like any Jekyll collection it can be told to generate or not generate pages based on a seting in *_config*.  Inside of *_config* in the *collections:* block near the end of the file is this:

<pre>
  docs:
    label: docs
    output: true
</pre>

To show the documentation pages edit *_config.yml* and set *collections.docs.output* to true.  This turns on display of documentation on the website.

To hide the documentation pages edit *_config.yml* and set *collections.docs.output* to false.  This turns off display of documentation on the website.

Additionally, when the documentation is activated, a notice which includes a link to the doc pages is shown on all site pages below the topnav indicating its on.  

{% include header/documentation.html -%}

We do not want to show the documentation in production.  If somehow it is being shown make a new branch, edit *_config.yml* to turn it off and merge that branch into *main*.

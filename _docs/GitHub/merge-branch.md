---
layout: docpage
title: Merge branch
description: Merge a branch into <i>main</i> to put the changes into production
styles:
scripts:
#  - /assets/js/jquery.min.js
permalink: /:collection/:path/
completed: false
redirect_from: /docs/github/
#document-ready:
#  - getRate();
---

## {% include docs/page-complete page=page -%}{{page.title}}

<h3 class="usa-sr-only">steps for {{page.title}}</h3>
{% assign accStep = 0 -%}

{{page.description}}

{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="Discussion" -%}
What to think about when doing this sort of task ...
{% include accordion/end-steps -%}

Go to top of Github FRTIB site

click branches

new pull request

create pull request

pa11y seems to fail from timeout

pa11y fail details

rerun all pa11y steps

go back to the pull request

Merge

confirm merge

watch build on federalist

check site after complete for your expected changes

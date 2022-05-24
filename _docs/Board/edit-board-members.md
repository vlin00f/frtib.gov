---
layout: docpage
title: Edit board member details
styles:
scripts:
#  - /assets/js/jquery.min.js
permalink: /:collection/:path
completed: false
# redirect_from: /docs/FOLDER/
#  - /docs/board/
#document-ready:
#  - getRate();
---

## {{page.title}}

<h3 class="usa-sr-only">steps for {{page.title}}</h3>
{% assign accStep = 0 -%}
{{page.description}}?

{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="Discussion" -%}
What to think about when doing this sort of task ...
{% include accordion/end-steps -%}


{% include docs/make-branch -%}


## other steps

{% include docs/standard-end-steps -%}


The contents of the [Board Members]({{site.baseurl}}/board-members) page are defined in a _data file, not in the .md file for the page.

0. Discussion

talk about board.yaml format

image not used

1. make branch

2. edit board.yml

_data/board.yaml

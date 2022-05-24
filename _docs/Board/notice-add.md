---
layout: docpage
title: Add board meeting notice
styles:
scripts:
#  - /assets/js/jquery.min.js
permalink: /:collection/:path
completed: false
redirect_from: /docs/Board/
#document-ready:
#  - getRate();
---

## {{page.title}}

<h3 class="usa-sr-only">steps for {{page.title}}</h3>
{% assign accStep = 0 -%}

{{page.description}}

{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="Discussion" -%}
What to think about when doing this sort of task ...
{% include accordion/end-steps -%}


{% include docs/make-branch -%}


## other steps

{% include docs/standard-end-steps -%}


Once a month the next board meeting is added to the header of the site, usually 1-2 weeks before the meeting.

0. Discussion

To add the announcement you need the date/time of meeting, teams link, and ...

### put steps here

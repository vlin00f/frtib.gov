---
layout: docpage
title: Add meeting minutes
styles:
scripts:
#  - /assets/js/jquery.min.js
permalink: /:collection/:path/
completed: false
redirect_from: /docs/Meeting-Minutes/
#document-ready:
#  - getRate();
---

## {% include docs/page-complete page=page -%}{{page.title}}

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



0. Discussion

The

1. create branch for attachments

TASK#######-YEAR-Mon-board-meeting-attachments-user

2. prepare the attachments

3. place attachments in pdf/year/month/folder

4. merge branch with <i>main</i>

5. test attachment urls

6. create branch for meeting minutes main file

TASK#######-YEAR-Mon-board-meeting-attachments-user

7. prepare meeting minutes main file

8. commit main file to branch

9. send preview url to requester

10. merge branch with main

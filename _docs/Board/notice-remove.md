---
layout: docpage
title: Remove board meeting notice
description: Remove notice from site after the meeting has happened
styles:
scripts:
#  - /assets/js/jquery.min.js
permalink: /:collection/:path/
completed: false
# redirect_from: /docs/FOLDER/
#document-ready:
#  - getRate();
---

## {% include docs/page-complete page=page -%}{{page.title}}

<h3 class="usa-sr-only">steps for {{page.title}}</h3>
{% assign accStep = 0 -%}

{{page.description}}

{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="Discussion" -%}
FRTIB board meetings are open to the public and held on the 4<sup>th</sup> Tuesday of each month.  The schedule and archive of previous meeting's minutes is [here]({{site.baseurl}}/meeting-minutes/).

Typically the request to post a notice of the next meeting comes in 2 weeks before the meeting and includes a request to take down the notice a day or two after the meeting.  Since removing the notice makes no other changes to the site we don't need approval to remove it (unless that policy is changed in the future.) We use the same task number and branch to remove the notice that was used to add the notice:

TASK*#######*-*May*-board-meeting-*user*

When the notice was added the branch was merged into main and so marked on the GitHub site.  When you make the change to remove the notice and commit/push to the branch the merged mark will go away and you will follow the usual steps to merge the branch a second time.

Unlike adding a notice, notice removal requires no extra information because we are just removing a link from the site. The basic steps are make a branch, alter the header component so that the meeting notice is no longer on the pages, commit the change, review on the preview site and merge with main.  Make sure to review the change on production after you merge.

The process to add the meeting notice is documented [here]({{site.baseurl}}/docs/Board/notice-add/).
{% include accordion/end-steps -%}


{% include docs/make-branch -%}


{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="edit <i>_includes/header/main.html</i>" -%}
The details and code to show a board meeting notice button in the header are in a file named *_includes/header/alert-board-meeting*.  The file *_includes/header/alert-none* is does not have any code and is literally an empty file.  Showing an alert or not showing an alert in the header is as simple as using the correct one of these two files in the main header component.  This was done specifically to make adding/removing of the notice east to perform and maintain.

So to remove the notice we edit the file *_includes/header/main.html* and we replace the line that adds the alert with the line that means no alert.

In the file there is a line like {&#37; include header/alert-board-meeting -&#37;}

Replace this with **{&#37; include header/alert-none -&#37;}**

{% include accordion/end-steps -%}


{% include docs/review-changes -%}
{% include docs/commit-changes -%}
{% comment -%}{% include docs/request-approval -%}{% endcomment -%}
{% include docs/merge-main -%}

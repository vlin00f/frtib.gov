---
layout: docpage
title: Add board meeting notice
description: Add notice to header before the next meeting
styles:
scripts:
#  - /assets/js/jquery.min.js
permalink: /:collection/:path/
completed: false
# redirect_from: /docs/Board/
#document-ready:
#  - getRate();
---

## {% include docs/page-complete page=page -%}{{page.title}}

<h3 class="usa-sr-only">steps for {{page.title}}</h3>
{% assign accStep = 0 -%}

{{page.description}}

{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="Discussion" -%}
FRTIB board meetings are open to the public and held on the 4<sup>th</sup> Tuesday of each month.  The schedule and archive of previous meeting's minutes his [here]({{site.baseurl}}/meeting-minutes/).

Typically the request to post a notice of the next meeting comes in 2 weeks before the meeting and includes a request to take down the notice a day or two after the meeting.  We use the same task number and branch to add and remove the notice:

TASK*#######*-*May*-board-meeting-*user*

When adding the notice there is some extra information we need from the requestor.  As discussed in the edit step later you will edit a few lines called out in the notice component.

The process to remove the meeting notice is documented [here]({{site.baseurl}}/docs/Board/notice-remove/).
{% include accordion/end-steps -%}


{% include docs/make-branch -%}



{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="edit <i>_includes/header/main.html</i>" -%}
The details and code to show a board meeting notice button in the header are in a file named *_includes/header/alert-board-meeting*.  The file *_includes/header/alert-none* is does not have any code and is literally an empty file.  Showing an alert or not showing an alert in the header is as simple as using the correct one of these two files in the main header component.  This was done specifically to make adding/removing of the notice east to perform and maintain.

So to add the notice we edit the file *_includes/header/main.html* and we replace the line that means no alert with the line that shows an alert button in the header.

In the file there is a line like {&#37; include header/alert-none -&#37;}

Replace this with **{&#37; include header/alert-board-meeting -&#37;}**

After you make this edit, save the file, and your local site builds, you should be able to load any page on the site and see the board meeting notice.  The details will be for the previous months meeting.  We will fix that in the next step.
{% include accordion/end-steps -%}


{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="edit <i>_includes/header/alert-board-meeting.html</i>" -%}
Build your local site and confirm that the board meeting notice button is showing after completing the previous step.

You must have the meeting details from your requestor to complete this step.  Edit the *_includes/header/alert-board-meeting.html* file in Atom or GitHub Desktop.  Look for the lines that have the meeting details in the file near the start of the file but above the **DO NOT CHANGE ...* comment in the file.

The snippet below is taken from *_includes/header/alert-board-meeting*.  Find those lines and change them with the data provided from the requestor.  The red indicates information that must be changed each time and the green indicates information the requestor should have provided but often does not change each month.

<hr>
Change only the conference date, time, phone, id, and url in the following lines.
<br>{&#37; endcomment -&#37;}
<br>{&#37; assign confDate = "<span class='red'>Tuesday, April 26&#60;sup>th&#60;/sup></span>" -&#37;}
<br>{&#37; assign confTime = "<span class='green'>10:00 a.m.</span>" -&#37;}
<br>{&#37; assign confPhone = "<span class='green'>1-202-599-1426</span>" -&#37;}
<br>{&#37; assign confID = "<span class='red'>676 492 751#</span>" -&#37;}
<br>{&#37; capture confURL -&#37;}
<br><span class='red'>https://teams.microsoft.com/l/meetup-join/<br>19%3ameeting_MzEwYTM0OTYtODE2Ny00MTU5LWIyYmQtNjgzNzFjMjJiOWRi%40thread.v2/0
<br>?context=%7b%22Tid%22%3a%223f6323b7-e3fd-4f35-b43d-1a7afae5910d%22%2c%22Oid
<br>%22%3a%227c8d802c-5559-41ed-9868-8bfad5d44af9%22%7d</span>
<br>{&#37; endcapture -&#37;}
<br>
<br>{&#37; comment -&#37;}   DO NOT CHANGE ANYTHING BELOW THIS LINE    {&#37; endcomment -&#37;}

{% include accordion/end-steps -%}


{% include docs/review-changes -%}
{% include docs/commit-changes -%}
{% include docs/request-approval -%}
{% include docs/merge-main -%}

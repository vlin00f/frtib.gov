---
layout: docpage
title: Add press release
description: Add press release to press release pages.
styles:
scripts:
#  - /assets/js/jquery.min.js
permalink: /:collection/:path/
completed: true
# redirect_from: /docs/Add-Content/
#document-ready:
#  - getRate();
---

## {% include docs/page-complete page=page -%}{{page.title}}

<h3 class="usa-sr-only">steps for {{page.title}}</h3>
{% assign accStep = 0 -%}

{{page.description}}

{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="Discussion" -%}

Adding a press release to the site is essentially performing the [Add File]({{site.baseurl}}/docs/Add-Content/add-file/) and [Update RR most recent]({{site.baseurl}}/docs/Add-Content/reading-room-most-recent/) tasks together.

The press release is usually a PDF file and you will store it in *_pdf/reading-room/PressRel/* with a name of the format:

PR_*YYYY*-*MM*-*DD*_*some_title_words*.pdf

where *YYYY*, *MM*, and *DD* are numerics for the year, month, and day with leading zeros if needed.  The *some_title_words* is a few underscore separated words to remind you what the press release is about.  Remember this file name will be the default name when a user downloads it.  The leading PR and dash separated date prefix is important for the organizing the files properly on the site as you add them.  If the filename is wrong it may not show up on the site.

If you are adding the first press release of a new year there is an extra step.  Say the current year is 2025 and you are adding the first press release for 2026.  This means that *_pages/reading-room/PressRel/index.md* is currently showing 2025 press releases.  You will need to duplicate last years press release \*.md file (i.e. 2024 in this example) and change all the occurences of 2024 in the file to 2025.  Do that then verify you are seeing all the 2025 press releases on the new page.  Once that is done, edit *_pages/reading-room/PressRel/index.md* and change all the occurences fo 2025 to 2026.  Then add to new 2026 press release as normal.

After adding the press release file to the site you will edit the *_data/reading-room-files.yml* file to add the button text as normal but for press releases we use the *desc:* field as a date value to display on the left of the file download button on the press release page.  See the [press release]({{site.baseurl}}/reading-room/press-releases/) for an example.  For consistency on the page the *desc:* is the date in US format:  *03/04/2022*.

The last step is to update the [Reading Room]({{site.baseurl}}/reading-room/) landing page to show this new, freshly added file as one of the [latest updates]({{site.baseurl}}/docs/Add-Content/reading-room-most-recent/).  Of course, if this is an older press release that was missed and just getting added you wont do this step.

Check the reading room landing page and the press release landing page for the new file you added and then commit your changes for review and merging.
{% include accordion/end-steps -%}


{% include docs/make-branch -%}

{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="Copy the new file into it place in the _pdf/ folder" -%}
See the discussion.  The press release is usually a PDF file and you will store it in *_pdf/reading-room/PressRel/* with a name of the format:

PR_*YYYY*-*MM*-*DD*_*some_title_words*.pdf
{% include accordion/end-steps -%}

{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="Verify the file is listed on the page" -%}
On your localhost:4000 server view the page you are expecting to show your new file.  If its there, you are done with this step.  For a recent press release it should be here: [press release landing]({{site.baseurl}}/reading-room/press-releases/)
{% include accordion/end-steps -%}

{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="Edit _data/reading-room-files.yml" -%}
Edit *_data/reading-room-files.yml* and search for *PR_* and add the file at the start of this area.

The entry looks something like this:

<pre>
- name: PR_2022-06-01_MFW_Fact_Sheet_June_2022.pdf
  updated: June 6, 2022
  desc: 06/06/2022
  title: MFW Fact Sheet June 2022 [PDF]
</pre>

Unlike other entries the *desc:* is required and should be the date the PR was released in the format above.
{% include accordion/end-steps -%}

{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="Edit _pages/reading-room/index.md" -%}
Review the discussion [here]({{site.baseurl}}/docs/Add-Content/reading-room-most-recent/) and edit the front matter of *_pages/reading-room/index.md*.  There should be an entry under *most_recent* like the following.  If there already is one, move it up to be the top since this new press release is the most recent addtion to the site.  If the entry is not already there add it to the top and remove the lowest one to keep the count at the number of *lastest updates* we want to show on the page.  The year in the line should match the current year, of course.

<pre>
most_recent:
  - /reading-room/PressRel/PR_2022-
</pre>
{% include accordion/end-steps -%}

{% include docs/short-end-steps -%}

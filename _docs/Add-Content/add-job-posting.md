---
layout: docpage
title: Add job
description: Add a job opening to the careers page
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

{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="Discussion" -%}
Each job listed on the [careers]({{site.baseurl}}/careers) page is defined by a file in *_careers/*.  The files are named in the format:

YYYY-MM-DD TITLE.md

With the first part being the date the job starts and the title matching the title on jobs page. This format makes it easy to organize the openings as they will be listed in the *_careers/* folder in the same order they get listed on the page.  The file name could be anything as long as its in the format below but this format makes maintenance easier.

Once a job is closed it can be moved into *_careers/_archive/*.  Any file in the *_careers/* folder will be parsed to be listed on the [Careers]({{site.baseurl}}/careers) page unless its in the *_archive/* subfolder.  The easiest way to add a new job listing is to duplicate an existing one, give it a name in the correct format, and then edit its contents to match the values of the new opening.  The easiest way to remove a job list is to move the \*.md file into the *_archive* or simply delete it. You should always leave one or two around just to make adding a new opening as easy as duplicating an existing file.

The format of an opening is described below.  This is based on the format we show on the [Careers]({{site.baseurl}}/careers) page and the value to connect it to the same job opening on [USA Jobs](https://www.usajobs.gov/).  After copying an existing job opening file edit each of the lines in the front matter.  You should have recieved each of these values as part of the request to add the opening to the website along with the URL to [USA Jobs](https://www.usajobs.gov/).  The text sentence about the job opening in the body of the page is the standard line we use.  You can edit it and it will change the text in the accordion on [Careers]({{site.baseurl}}/careers).

After editing your new opening check the [Careers]({{site.baseurl}}/careers) page.  If you don't see the new opening verify the data in the front matter, especially the start and end dates.  If you are adding the job posting early and the start date is in the future set the start to today's date long enough to verify the entry on the page and then put back the correct date.  When you see your new job posting on [Careers]({{site.baseurl}}/careers) click the link and verify its connected to the correct [USA Jobs](https://www.usajobs.gov/) listing.

<pre>
&#8722;&#8722;&#8722;
position: Special Assistant
grade: GS-0301-09
start: 2022-05-11
end: 2022-05-25
codes:
  &#8722; frtib: FRTIB-22-IMP-025-11495934
    usa: 653732000
&#8722;&#8722;&#8722;

The FRTIB is looking for a highly qualified and motivated
individual to serve as a #position#.
</pre>

**Note:** The [Careers]({{site.baseurl}}/careers) page runs JavaScript that hides job openings whose start and stop date don't include the current date.  If you add a job opening to the site before the start date or leave the \*.md file in the *_careers/* folder past the end date the listing will not appear on the page but it is there, it's simple hidden by the CSS *display: none;*.  Because of this, you should only leave one or two old jobs in the *_careers/* folder and move the rest into the *_archive/* subfolder or delete them.  Entries in the subfolder are not included on the page at all.
{% include accordion/end-steps -%}


{% include docs/make-branch -%}


{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="Duplicate an existing job file in <i>_careers/</i>" -%}
Duplicate an existing job listing in *_careers/* and name the new file

YYYY-MM-DD TITLE.md

with the first part being the date the job starts and TITLE matching the title on jobs page.
{% include accordion/end-steps -%}


{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="Edit new job opening file" -%}
The file should look simular to what is below.  Update the bolded items.

<br>&#8722;&#8722;&#8722;
<br>position: **Special Assistant**
<br>grade: **GS-0301-09**
<br>start: **2022-05-11**
<br>end: **2022-05-25**
<br>codes:
<br>  &#8722; frtib: **FRTIB-22-IMP-025-11495934**
<br>    usa: **653732000**
<br>&#8722;&#8722;&#8722;

The FRTIB is looking for a highly qualified and motivated individual to serve as a #position#.
{% include accordion/end-steps -%}


{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="Test new entry" -%}
Go to the [careers]({{site.baseurl}}/careers) page and look for your new listing. If you don't see the new opening verify the data in the front matter, especially the start and end dates.

If you are adding the job posting early and the start date is in the future set the start to today's date long enough to verify the entry on the page and then put back the correct date.

When you see your new job posting on [Careers]({{site.baseurl}}/careers) click the link and verify its connected to the correct [USA Jobs](https://www.usajobs.gov/) listing. Compare the start and end dates, job title, and job codes for the entry at both sites.
{% include accordion/end-steps -%}

{% include docs/short-end-steps -%}

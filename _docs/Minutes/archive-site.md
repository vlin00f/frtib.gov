---
layout: docpage
title: Meeting archive
description: Site for board meeting minutes archive
styles:
scripts:
#  - /assets/js/jquery.min.js
permalink: /:collection/:path/
completed: false
# redirect_from: /docs/Notes/
#document-ready:
#  - getRate();
---

## {% include docs/page-complete page=page -%}{{page.title}}

<h3 class="usa-sr-only">steps for {{page.title}}</h3>
{% assign accStep = -1 -%}

{{page.description}}

There is a 1 GB limit (2022) on the total size of Federlist websites.  [Large File Hosting](https://federalist.18f.gov/documentation/included-with-federalist/#large-file-hosting).  To stay below this limit the older meeting minutes PDFs and attachments were moved to [minutes.frtib.gov](https://minutes.frtib.gov).

On the main production site we keep the meeting minutes in *_meeting_minutes/YEAR* and the attachments in *pdf/minutes/YEAR/MONTH/*.  We are only showing the last 3 years of meeting minutes on the main production site.  On [minutes.frtib.gov](https://minutes.frtib.gov) we have ZIP files contain both the main meeting minutes file and all its attachments in one package.  These ZIP files are organized in a similar way as the main minutes PDF files on the production site.  The ZIP files are located in the minutes.frtib.gov repository in *_meeting_minutes/YEAR*.  ZIP files for minutes we do not want to appear on the website are located in *_meeting_minutes_hidden/YEAR*.

In order to ensure the ZIP files are complete we create each ZIP file at the same time that we prepage the main file and attachments for the main production site.  

To add a new ZIP file to the archive as the files are added to production simply copy the *YYYYMMM*.zip file into *_meeting_minutes_hidden/YEAR*, creating the YEAR subfolder as needed.

To make a YEAR of ZIP files that are hidden appear on the web site move the *_meeting_minutes_hidden/YEAR* folder from *_meeting_minutes_hidden/* to *_meeting_minutes/YEAR* and rebuild the site.

At the start of a new year when the January meeting minutes are added to production the follow steps should be done in this order:

1. Create a folder for the current year on the production site: frtib.gov:*_meeting_minutes/YEAR*.  Add the new meeting minutes as normal.

1. Create a folder for the current year on the archive site: minutes.frtib.gov:*_meeting_minutes_hidden/YEAR*.  Add the new meeting minutes ZIP file containing the main PDF and attachments to this folder.  This folder and file will not show up on the websit because they are in the hidden folder, *_meeting_minutes_hidden*.

1. Move the oldest YEAR folder in *_meeting_minutes_hidden* to *_meeting_minutes*.  This folder will appear on the archive site when you rebuild.

1. Once you see the new year on the archive site delete that same YEAR from the production site in *_meeting_minutes* and the attachments in *pdf/minutes/YEAR/*.

1. Get approval for the changes on the production meeting minutes site (new meeting minutes file, removal of oldest YEAR) and addition of that same YEAR viewable on the archive site.

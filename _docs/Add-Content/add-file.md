---
layout: docpage
title: Add file
description: Add file to an existing page on the site.
styles:
scripts:
#  - /assets/js/jquery.min.js
permalink: /:collection/:path/
completed: false
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

When the task is to add a file to an existing page on the website you start by considering where that page is.  The page files (\*.md) for pages linked in the footer on the site are all located in _pages/bottom-links/\* in a subdirectory with a name indicative of the link in the footer section.  The files listed on those pages are in subfolders of _pdf/.

The \*.md files for the reading room area of the site are all in _pages/reading-room/ and the files on those pages go in _pdf/reading-room/ subdirectories.

The other pages linked from the topnav have their \*.md files in _pages and their files in _pdf/ sudirectories.

For most of the pages there is a call to a component (file-list) in the _includes/ folder that will list all the files in a _pdf/ subdirectory as buttons on the page.  These file lists are contained in accordions with only the most recent file in the _pdf/ subdirectory above the accordion (also using the file-list component with a count=1 argument).  The component works by listing all the files in the specificed _pdf/ location in reverse order by filename.  The component works by specifying the prefix of the path to the files and a new file will be included in a list if its full path prefix is the same as the files around it.  See this [note]({{site.baseurl}}/docs/Notes/file-list) for more detail.

For a few individual files on the site they are added to a page using the button-link component.  Again the files are still put in a logical place inside of _pdf/, but the component expects the full path/name to the file.

The meeting minutes attachments always go into the pdf/ (not _pdf/) folder as discussed [here]({{site.baseurl}}/docs/Add-Content/add-meeting-minutes) in subfolders based on year/month of the meeting.

This page assumes you are adding a file into a list of file on a page that is already in place.
{% include accordion/end-steps -%}


{% include docs/make-branch -%}

{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="Copy the new file into it place in the _pdf/ folder" -%}
See the discussion.  The file should be place into a subfolder of _pdf/ corresponding to the page the file is listed on.
{% include accordion/end-steps -%}

{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="Verify the file is listed on the page" -%}
On your localhost:4000 server view the page you are expecting to show your new file.  If its there, you are done with this step.

If the new file is not showing on the page you will need to edit the \*.md file for the page and alter or add the call to the file-list component.  This [page]({{site.baseurl}}/docs/Notes/file-list) explains how the file-list component works and will help you understand how to edit the call on the page to make your file show properly.
{% include accordion/end-steps -%}


{% include docs/edit-rr-yml -%}

{% include docs/short-end-steps -%}

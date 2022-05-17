---
layout: docpage
title: Add file
styles:
scripts:
#  - /assets/js/jquery.min.js
permalink: /:collection/:path
completed: false
redirect_from: /docs/Add-content/
#document-ready:
#  - getRate();
---

## {{page.title}}

<h3 class="usa-sr-only">steps for {{page.title}}</h3>
{% assign accStep = 0 -%}

{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="Discussion" -%}

When the task is to add a file to an existing page on the website you start by considering where that page is.  The page files (\*.md) for pages links in the footer on the site are all located in _pages/bottom-links/\* in a subdirectory with a name indicative of the link in the footer section.  The files listed on those pages are in subfolders of _pdf/.

The \*.md files for the reading room area of the site are all in _pages/reading-room/ and the files on those pages go in _pdf/reading-room/ subdirectories.

The other pages linked from the topnav have their \*.md files in _pages and their files in _pdf/ sudirectories.

For most of the pages there is a call to a component (file-list) in the _includes/ folder that will list all the files in a _pdf/ subdirectory as buttons on the page.  These file lists are contained in accordions with only the most recent file in the _pdf/ subdirectory above the accordion (also using the file-list component with a count=1 argument).  The component works by listing all the files in the specificed _pdf/ location in reverse order by filename.  The component works by specifying the prefix of the path to the files and a new file will be included in a list if its full path prefix is the same as the files around it.

For a few individual files on the site they are added to a page using the button-link component.  Again the files are still put in a logical place inside of _pdf/, but the component expects the full path/name to the file.

The meeting minutes attachments always go into the pdf/ (not _pdf/) folder as discussed [here]({{site.baseurl}}/docs/Add-Content/add-meeting-minutes) in subfolders based on year/month of the meeting.

This page assumes you are adding a file into a list of file on a page that is already in place.
{% include accordion/end-steps -%}


{% include docs/make-branch -%}

{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="make folder/index.md file for new page(s)" -%}
needs edit

Easiest way to add a new page is to copy an existing simular page already on the site.  We have pages with file lists and ones that are just text.

A complex page like the [Careers]({{site.based}}/careers) page will require a developer to code the page.
{% include accordion/end-steps -%}

{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="Edit new page content" -%}
needs edit

Now that you have the new pages in place in the _pages/ folder edit each added page.  You must change the <span class="red">permalink:</span> value to a unique value or you will have two pages trying to be in the same place in your build and only one of them will work.  The same is true for any <span class="red">redirect-from:</span> values you have for the page.

You should edit the page title and its content for the needs of the TASK.
{% include accordion/end-steps -%}


{% include docs/edit-rr-yml -%}

{% include docs/run-one-pa11y -%}

{% include docs/run-htmlproofer -%}

{% include docs/run-pa11y -%}

{% include docs/commit-changes -%}

{% include docs/request-approval -%}

{% include docs/merge-main -%}

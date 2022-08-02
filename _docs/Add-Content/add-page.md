---
layout: docpage
title: Add page
description: Add new page to the site
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
When adding a page to the site first consider where the page will be linked on the site. The \*.md files for the pages on the website are all located in the _pages/ folder. The home page is the index.md at the top level of that folder. The [contacts]({{site.baseurl}}/contacts) page linked in above the search box and in the branding footer is also there.  The links in the topnav are subfolders of pages/ containing an index.md which is the main page of each of those. The same is true of the link in the footer but those are all grouped in _pages/bottom-links.  For some of the _pages/ subfolders there are \*.md files defining pages in addition to the index.md file, for others, any extra pages in that section are in subfolder along side of the index.md.

Note: all the content for the search page is located in the search/ folder and is discussed [elsewhere]({{site.baseurl}}/docs/Notes/search-setup).

The easiest way to add a new page is to pick an existing page similar in design and located in a similar area on the site to the one you want to add and duplicate its folder. Delete any extra \*.md files in that folder and then edit the index.md.  You **MUST** alter the permalink to the relative url you want to use for the page first.  If you don't then your new page and the one you copied will be fighting for that URL and each time you build the site, you will get one or the other of those two pages, but not both.  You will need to edit the title and content but immediately change the permalink value and save the page to avoid confusion.
{% include accordion/end-steps -%}


{% include docs/make-branch -%}


{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="make folder/index.md file for new page(s)" -%}
Easiest way to add a new page is to copy an existing simular page already on the site.  We have pages with file lists and ones that are just text.

A complex page like the [Careers]({{site.based}}/careers) page will require a developer to code the page.
{% include accordion/end-steps -%}


{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="Edit new page content" -%}
Now that you have the new page(s) in place in the _pages/ folder edit each added page.  You must change the <span class="red">permalink:</span> value to a unique value or you will have two pages trying to be in the same place in your build and only one of them will work.  The same is true for any <span class="red">redirect-from:</span> values you have for the page.

You should edit the page title and its content for the needs of the TASK.
{% include accordion/end-steps -%}


{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="Add new page(s) to navigation.yml" -%}
To add the page to the navigation one of that data blocks in _data/navigation.yml will need an edit.  Which one depends on where you are adding the link.

See the discussion in the *navigation.yml* accordion on this [page]({{site.baseurl}}/docs/Notes/YAML-files) for specifics about the organization on the *navigation.yml* file.
{% include accordion/end-steps -%}


{% include docs/review-changes -%}
{% include docs/run-one-pa11y -%}
{% include docs/run-htmlproofer -%}
{% include docs/run-pa11y -%}
{% include docs/commit-changes -%}
{% include docs/request-approval -%}
{% include docs/merge-main -%}

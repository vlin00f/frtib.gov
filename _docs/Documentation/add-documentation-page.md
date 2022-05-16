---
layout: docpage
title: Add documentation page
styles:
scripts:
#  - /assets/js/jquery.min.js
permalink: /:collection/:path
completed: false
redirect_from: /docs/Documentation/
#document-ready:
#  - getRate();
---

## {{page.title}}



0. Discussion

The documentation is contained in a collection named _docs.  It is organized into subfolders by topic.  The sidenav for the documentation area is generated from the contents of the folders in the collection.  There is not a defined sidenav for this area.

Simple add a new folder to create a new area.  Add .md files in a folder for each new page.  The folder and page name will be the url (/docs/folder/page-name) for the added page.

One of the pages in each folder should have a redirect_from for the folder to be the default page of that folder.

### put steps here

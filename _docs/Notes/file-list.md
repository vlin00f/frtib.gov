---
layout: docpage
title: file-list component
description: How does the file-list component work?
styles:
scripts:
#  - /assets/js/jquery.min.js
permalink: /:collection/:path/
completed: false
#redirect_from: /docs/Search/
#document-ready:
#  - getRate();
---

## {% include docs/page-complete page=page -%}{{page.title}}

<h3 class="usa-sr-only">steps for {{page.title}}</h3>
{% assign accStep = 0 -%}

{{page.description}}

To make adding of new files to the site the _includes/file-list component was developed.  The pages on the site that list files have an \*.md file in _pages/ and the set of files shown on that page in _pdf/.  The \*.md files and the PDF (or other data) files are in subfolders of those two locations named to make it easy to associate them.

The design is that you copy the new data file into the proper place in a _pdf/ subfolder and the file immediately shows up on the corresponding page.  One some pages there are several distinct groups of files and so the files can be partitioned by the prefix of their path and filename.  If nothing else, you could make subdirectories with distinct names and use that to split the files into groups.  Again, its the prefix that matters.

For example, consider the [Reading Room / Reports to Congress]({{site.baseurl}}/reading-room/reports-to-congress/) page.  While most of the pages that list files show the most recent file and an accordion with all the older files, this page has two sets of files, the annual report and the annual report on education efforts.  The annual report files all have names of the form TSP-Annual-Report_*YEAR*.pdf.  The education effort files are all named Financial_Literacy_Rpt_*YEAR*.pdf.   The names of all these files are the same except that *YEAR* is the literal 4-digit year the report was made.

On the page you will see two buttons corresponding to the most recent file of each set.  Below that are two accordions with each accordion containing all the other files of the set.  This links to the files as buttons is performed by the file-list component.

Essentially the component gets a list of all the files in a specific dirctory in alphabetical order.  It then adds a button as a link to the file for each file in the list.  The arguments to the component are which *collection* the files are stored in (almost always the pdf collection which is the _pdf/ folder), the prefix of which files to include in the list, and optional arguments to reverse the order of the list (we almost always want the new file, most recent year in the name first so reverse=true), dropFirst (skip the first file) and a limit (count=1) of the number of files to list.  Together this lets us setup the page to list our files in groups by name with the option to show or skip the first file.

In the example page we have the following two lines:

<div>
{&#37; include file-list coll="pdf" folder="/reading-room/congress/TSP" format='title' reverse=true dobutton=true count=1 -&#37;}
<br>
{&#37; include file-list coll="pdf" folder="/reading-room/congress/Fin" format='title' reverse=true dobutton=true count=1 -&#37;}
</div>

What the first call says is get files from the _pdf/ collection whose prefix starts with */reading-room/congress/TSP* (i.e. get a list of the files in _pdf/reading-room/congress/ whose name starts with TSP), list them in reverse order, but only create the button linked to the first one (count=1).  The second line does exactly the same thing but for the files that start with *Fin*.  Because of our file names this puts all the files in the _pdf/ subfolder into one of those two groups.  These two lines show just the most recent file, based on its name in alphabetical order.  If your files dont group well based on the file names you can put all the files into a subfolder in the same location and include the subfolder name as part of the path.  Then only the files in that subfolder would be listed.  The folder value can be the full path to a specific subfolder in your collection and you don't have to put any prefix of the filename in the argument.  Without the count=1 argument all the matching files would be listed.

In the .md file for the page  below those list is code to create two accordions.  The content of those accordions is another call to file-list, but this time we are listing all the matching files EXCEPT for the first one.

<div>
{&#37; include file-list coll="pdf" folder="/reading-room/congress/TSP" reverse=true format='title' dobutton=true dropFirst=true -&#37;}
<br>
{&#37; include file-list coll="pdf" folder="/reading-room/congress/Fin" reverse=true format='title' dobutton=true dropFirst=true -&#37;}
</div>

2022 June - Dav added sorting by the text of the button when you do a file list.  The default sort, set by "sortKey='XXX'", is by 'buttxt', i.e. the text on the button or link to the file.  This defaults to the filename but can be set by "format='YYY'" where YYY is title, desc or press-release.  The sortKey can be changed directly to title, desc, or updated, values obtained from reading-room-files.yml.  Normally we set format='title' and let sortKey default to 'title'.

#### Notes

* The *count=1* is there to show just the first file of the list.  Its a counter because we used count=4 on the reading room page at one time because we changed that code.

* button-link  The other way to include a button link to a file is to explicitly reference the file in a call to a different component.  The call below is uses the url to the file in production as well as explicitly setting the text for the button.  <br><br>{&#37; include button-link url="/pdf/procurement/FRTIB_Protest_Procedures_Final_signed.pdf" text="FRTIB Protest Procedures [PDF]" -&#37;}

* offsite-link  The offsite link creates a link to a page no on our site.  We use it to style the link (including the offsite icon) in a consistent way.  This allows us to edit just the component once and change all the offsite links using the call to the new standard styling.

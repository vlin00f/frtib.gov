---
layout: docpage
title: Add meeting minutes
styles:
scripts:
#  - /assets/js/jquery.min.js
permalink: /:collection/:path/
completed: false
redirect_from: /docs/Meeting-Minutes/
#document-ready:
#  - getRate();
---

## {% include docs/page-complete page=page -%}{{page.title}}

<h3 class="usa-sr-only">steps for {{page.title}}</h3>
{% assign accStep = 0 -%}

{{page.description}}

{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="Discussion" -%}
The FRTIB board meetings are usually held on the 4<sup>th</sup> Tuesday of each month.  There is a schedule of the planned meetings on the [Meeting Minutes]({{site.baseurl}}/meeting-minutes) page.  The tasks to [add]({{site.baseurl}}/Board/notice-add) and [remove]({{site.baseurl}}/Board/notice-remove) the meeting notice from the site header is discussed elsewhere.

A few days or weeks after each meeting you will receive a request to post the minutes of that meeting on the site.  The request will include the main PDF of the minutes and 4-10 attachment files (mostly PDF) which are the presentations from the meeting that the minutes reference.

There is a process to prepare the files to post on the site followng an FRTIB policy that is discussed elsewhere. The files are named in a standard format, the document properties of each file are set to a standard, bookmarks to each page or major feature in the contents are added and the main minutes file is edited to contain links with the full-path URL to each attachment on the produciton site.

The minutes PDF is named *YYYYMMM*.pdf where *YYYYY* is the year of the meeting and *MMM* is an abbreviation of the month.  See the contents of the accordion for last year on the [Meeting Minutes]({{site.baseurl}}/meeting-minutes) page for example naming.  In rare cases there could be more than one meeting in a month. When that happens the 2 digit date of the day of the meeting is added to the name.  Open the accordion for the year 2020 on the [Meeting Minutes]({{site.baseurl}}/meeting-minutes) page for an example.

The attachments are named MM-*YYYYMMM*-Att*#*.pdf where the *YYYYYMMM* matches the name on the main minutes file and the *#* is a number matching number in the list at the end of the minutes file. Open on of the minutes file already on the site, scroll to the end and see the attachment list for an exmaple.  Hover your mouse over the attachment text in the list to the full-path URL to each attachment.

The minutes PDF is added to the site in a process simular to [adding a file]({{site.baseurl}}/docs/Add-Content/add-file/) except we don't need add text for the button of link to the file.  When added, the new minutes file will appear on the [Meeting Minutes]({{site.baseurl}}/meeting-minutes) page showing the file name on the button.  The attachments are not shown anywhere on the site.  They are organized in a folder but there are not links to them.  They are only referenced from the main minutes PDF.  To add them to the site they are simply dropped into the correct folder.

It is expected that some interested parties will download the main minutes PDF and save a copy locally on their computer.  To support their ability to see the attachments the full-path URL including the hostname of the production site ([www.frtib,gov](https://www.frtib.gov/)) is in the PDF.  If someone downloaded a minutes PDF 10 years ago and opened that file on their computer today and clicked an attachment link the file would still download from our site and open.  The path to the attachments on the production site has been maintained since 2007 in three different CMS products. Because its the full-path URL to the attachments the process of this TASK is in two phases.

First the attachments are added to the site.  We do make a branch that we merge to production for consistency but we dont do the usually verification and approval steps.  The files are not listed on the site so there is nothing to review and the files must be on the production site with the full-path URL and not a URL in a preview branch in order to review and test the links in the main minutes PDF when we add that file in a second branch.

Because of space limits on Federalist (see [Minutes Archive]({{site.baseurl}}/docs/Minutes/archive-site/)) we now archive the older meeting minutes on a seperate site, in a seperate GitHub repository, and available to the public at [minutes.frtib.gov](https://mintues.frtib.gov).  The make archiving easier we create the zip file for the archive when we put the most recent minutes on the production site.  We dont reveal the newest zip files for several years.
{% include accordion/end-steps -%}

{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="Create branch to post attachments" -%}
As discussed, we publish the attachments to production before we create a branch for the main PDF.  Typcially we name this branch

TASK*#######*-*Month*-board-meeting-*attachments*-*user*

We will name the followup branch for the main minutes file the same name but replace *attachments* with *minutes*.
{% include accordion/end-steps -%}

{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="Prepare attachments for posting" -%}
Follow the current FRTIB policy for preparing the minutes (document properties, bookmarks, compress) if you haven't already.  Each file should be named like

MM-*YYYYMMM*-Att*#*.pdf, i.e. MM-2022Mar-Att1.pdf

where the *#* matches the number of the attachment in the list at the end of the main minutes PDF.
{% include accordion/end-steps -%}

{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="Place attachments in <i>pdf/minutes/year/month/</i> folder" -%}
The attachments are not listed on the site and are only referenced by the main minutes PDF.  Because of this they are not part of the *_pdf/* collection in the repository.  They are not processed by any site building code (Jekyll, Liquid). Instead, they are placed in their final relative path and simply copied to the site as part of the publish process.

You will need to add a sub folder for the month and maybe for the year if this is the January minutes and start of a new year.  The files should be copied into the repository at *pdf/minutes/YEAR/MONTH/* where YEAR is the year for the attachments and MONTH is the same 3-5 characters you used to represent the month in the name of the main minutes file.  See the accordion for the previous year at [Meeting Minutes]({{site.baseurl}}/meeting-minutes) for examples.

**NOTE:**

These files go in the *pdf/* folder, **NOT** *_pdf/*.

If you look in *pdf/minutes/* you will see folders for the most recent years but you will also see a great number of PDF not in year subfolders.  When this archiving first started the attachments were simply put in the top level folder.  Over time it became clear that they should be organized into subfolders for easier maintenance but the older minutes files have embedded links where the files sit now.  Moving the older files into subfolders would break the links for the minutes files we have at [Meeting Minutes]({{site.baseurl}}/meeting-minutes) forcing us to update them but would also break the links in any copies anyone downloaded in the past.

In 2019 we started putting the attachments into a year subfolder and in April of that year we added the month subdirectory to the structure.
{% include accordion/end-steps -%}

{% include docs/merge-main -%}

{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="Test attachment URLs" -%}
Because nothing visibly changes on the site when we add the attachments and because we need them to test the minutes file later, we simply merged the attachments branch in the previous step.  After merging we test that the attachments are where we expect them.  Go the following link and after it loads the attchment from 2022 March, edit the URL by changing the month in both places and maybe the year to match the first attachment you just published to production.

<https://www.frtib.gov/pdf/minutes/2022/Mar/MM-2022Mar-Att1.pdf>{: target="blank"}

If after changing the month/year in the URL your PDF doesn't load, then verify the file names in your branch and commit and merge again until the new attachment URL works.  Once that one works, edit the URL and change to *Att#* to test for each attachment.

If any of the new attachments don't load you can't move on to the next steps or you will risk having the minutes file posted with broken links.
{% include accordion/end-steps -%}

{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="Create branch for meeting minutes main file" -%}

TASK*#######*-*Month*-board-meeting-*minutes*-*user*

This is the same name as the first branch for the attachments but named *minutes*, not *attachments*.
{% include accordion/end-steps -%}

{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="Prepare meeting minutes main file" -%}
Follow the current FRTIB process for preparing the main minutes file including editing the document properties, adding bookmarks and at the end compressing the file.

As part of the preperation you will add links from text in the minutes to the attachments you posted to the site in the previous steps.  Typically, each attachment is linked in the minutes file twice. First, in the minutes of the meeting there will be a mention of who presented what reports during the meeting.  You can find these references in the minutes file by searching for "attached".  There is also a list at the end of the minutes file number each attachment that should be linked.

As you add the links make sure the title of each report that you link match the file you are linking too and that the order matches the list at the end.  You are part of the quality control process here.  Occasionally an attachment is in the list at the end of the minutes but not mentioned in the body.  This happens because the file was part of one of the reports and probably mentioned in the attachment for that report.  This is ok, but each attachment should be listed at the end.  If an attachment was added in the previous steps but is not in the list at the end of the minutes seek clarification from the task requestor.
{% include accordion/end-steps -%}

{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="Copy minutes file to <i>_meeting_minutes/YEAR/</i>" -%}
The minutes PDF is named *YYYYMMM*.pdf where *YYYYY* is the year of the meeting and *MMM* is an abbreviation of the month.  See the contents of the accordion for last year on the [Meeting Minutes]({{site.baseurl}}/meeting-minutes) page for example naming.  In rare cases there could be more than one meeting in a month. When that happens the 2 digit date of the day of the meeting is added to the name.  Open the accordion for the year 2020 on the [Meeting Minutes]({{site.baseurl}}/meeting-minutes) page for an example.

Copy the file to *_meeting_minutes/YEAR*.  Each of the folders in the *_meeting_minutes/* collection will contain 12 main minutes files (unless there is an extra meeting some month).  For the January file you will need to add a folder for the new year.  Just add the folder with the year as the name.  This automatically adds the accordion for the year.  As soon as you put the file in place and the site rebuilds you should see your new minutes file at [Meeting Minutes]({{site.baseurl}}/meeting-minutes). You should see the link for the file above the accordions as the latest minutes added as well seeing a link for it in the folder for the year.  This assume you are adding them in chronological order which should happen since the meetings happen one month apart.  If you don't see the lastest minutes file check your filename and location you dropped it.

Verify the button works to open the minutes file on your local site.  Test the links to the attachments by clicking them in the file that opened.  Since we already put the attachments into production the full-path URL links should work.  If not, go back and double check the previous steps.  Move to the next step when everything works as expected.
{% include accordion/end-steps -%}

{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="Set last updated date on meeting minutes page" -%}
Edit *_pages/meeting-minutes/index.md* and edit the **last_update:** line of the front matter to the current date.  This date is shown on the meeting minutes page to indicate when the most recent meeting minutes were added.  Verify on [Meeting Minutes]({{site.baseurl}}/meeting-minutes) that the new date is showing correctly.
{% include accordion/end-steps -%}

{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="Add/Commit main file to branch and test" -%}
Commit your change (adding the main minutes file) to your branch, commit and push up the changes.  Go to your federalist build site and wait for build to complete and get your preview link. Once its done verify the new minutes PDF is on the minutes page in the preview branch.  Make sure the PDF opens and test the attachments again.
{% include accordion/end-steps -%}

{% include docs/request-approval -%}

{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="Create ZIP file for the archive" -%}
While you have copies of the new meeting minutes files handy create a local folder with the name matching the main PDF file for the new meeting minutes file, *YYYYMMM* (without the .pdf).  Put a copy of the main PDF and each of the attachments into that folder and create a ZIP file of the folder named *YYYYMMM*.zip.  You should copy this into the meeting minutes archive as directed here: [archive-site]({{site.baseurl}}/docs/Minutes/archive-site).
{% include accordion/end-steps -%}

{% include docs/merge-main -%}

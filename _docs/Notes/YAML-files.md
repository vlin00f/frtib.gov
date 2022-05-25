---
layout: docpage
title: YAML files
description: What is each YAML file used for?
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

<h3 class="usa-sr-only">{{page.title}}</h3>
{% assign accStep = -1 -%}

{{page.description}}

{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="Discussion" -%}
These are the different yml files used for this site and an explanation for what each does.  The extension can be .yml or .yaml, there is no different.  (We should have made them all .yml files for consistency.)

The .yml (or .yaml) files are written in data serialization language and are used for configuration.

The _data folder contains targets config files used in liquid code all over the site.  Any referecne of the form site.data.** is a reference to one of those files.  For example, site.data.navigation.footer_nav is a reference to the footer_nav block in the navigation.yml of the _data folder on this site.  The data format is very structured but it is expected that content editors will change these files.

The main file is _config and any references in the liquid code of the form site.** that isn't of the form site.data.** refers to something in the _config.yml file.  NOTE: anytime you change the _config.yml file you must stop and restart your local web server.  This file is only read when bundle is launched.  You should consult documentation on the internet for GitHub or Jekyll if you need to update this file.  This file should only be altered by a developer who understands how the site is compiled.
{% include accordion/end-steps -%}

{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="_config.yml" -%}
This is the primary configuration file for the site.  If you change this file stop and restart your local web service before testing the change.

Changing this file does not happen often.  This file should only be altered is somewhere else in this documentation instructs the change.
{% include accordion/end-steps -%}

{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="_data/board.yaml" -%}
This file contains the data presented on the [Board Members]({{site.baseurl}}/board-members/) page.

Follow the instructions [here]({{site.baseurl}}/docs/Board/edit-board-members) if there is a need to update that data.
{% include accordion/end-steps -%}

{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="_data/collection.yaml" -%}
This was a file included with the original template for the site.  It is not used for produciton content.  It was left in place as an example of the structure of the site and data management.

It can be deleted but there is no harm is letting it site around.
{% include accordion/end-steps -%}

{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="_data/navigation.yml" -%}
This file contains the text-link pairings for all the menus and navigation for the site.

The **topnav** links are defined by the *top_navigation* block.  That block uses the *name:* and *url:* fields, in order to from left to right to build the topnav bar.  If the topnav link should be a dropdown and not a link to single url then a *children:* value is needed.  That value is the name of another block in the *navigation.yml* file that contains the list of items for the drop down.

For example, both the *Reading Room* and *Procurement* topnav entries are drop downs, not links. The reference *reading_room_nav* and *procurement_nav* respectively.  Both of those child blocks are used both as a drop down list and as a sidenav when you are viewing one of the pages in those list. Because of this, these sidenav blocks define the *name:* and *url:* of the landing page as the first two lines, and then the *name:*'s and *url:*'s of the sub pages in the section.  The url of the landing page is in both places, the *top_navigation* and the child block.  Its the entry in the child block that is used to build links on the page for the landing page.

The *privacy_nav* and *onboarding_nav* blocks are links in the footer to landing pages with sidenavs so their structure is the same even though its not used a drop down in the top nav.  The first two lines of *name:* and *url:* must be in sidenav blocks for the code to build the sidenavs correctly.

Some of the *name:*/*url:* pairs in a sidenav might also have subpages such as the [press release]({{site.baseurl}}/reading-room/press-releases/) area under [reading room]({{site.baseurl}}/reading-room/).  The *reading_room_nav* block for that sidenav has an entry for the press release landing page with a *name:*, *url:* and *children:* entry.  The *chiledren* entry is *rr_pr_nav:*, another block in *navigation.yml*. The sitenav code will properly format the sidenav visually.  This is as far deep as the subpages on the sidenav can go.  Several other links on the reading room sidenav also have sub pages with blocks named *rr_???????* so they are easy to identify.

Note, some of these blocks have an *image:* value which is disabled but could display an image on the 'cards' of a landing page.  A developer would be needed to reenable this code.

The links above the search bar are defined by *search_links*.  The *Share* link is added to the end of any links defined there.

The tabs for the search landing page are defined by *search_nav*.  See the search notes to edit that.

The links at the bottom of all pages, just above the footer are defined by the *footer_nav* block. Simply add a *name:* and *url:* pair to the block to add links there.

If your page is not linked on the site you need to consider how users will get to the page.  The search page is accessable by using the search box.  It is not directly linked on the site anywhere.  But don't count on not linking a page to hide it.  This site doesn't have the capability to hide pages as its intended for public content.
{% include accordion/end-steps -%}


{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="_data/reading-room-files.yml" -%}
This file contains a list of file names and descriptions used when one of the components puts a link to a file on one of our pages.

For example, for most of the pages in the Reading Room or the the ones linked in the footer the page has the most recent file or two and an accordion that lists all the posted files in that section.  The file-list component generates a button for each file linked from that page.  The text of the button is set in reading-room-files.yml and is matched to the exact filename.

The structure in this yml file has a value for *updated:* and *description*.  At time of release to production only the press release page used the description but its there for future need.  The updated value should be entered with the date the file was added to the website for auditing purposes and because we may display that date on the pages in the future.  Better to keep record that date now.
{% include accordion/end-steps -%}

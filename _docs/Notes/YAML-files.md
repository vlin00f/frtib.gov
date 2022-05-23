---
layout: docpage
title: YAML files
styles:
scripts:
#  - /assets/js/jquery.min.js
permalink: /:collection/:path
completed: false
#redirect_from: /docs/Search/
#document-ready:
#  - getRate();
---

## {{page.title}}

<h3 class="usa-sr-only">{{page.title}}</h3>
{% assign accStep = 0 -%}

These are the different yml files  used for this site and an explanation for what each does.  The extension can be .yml or .yaml, there is no different.  (We should have made them all .yml files for consistency.)

{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="Discussion" -%}
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
This file contains the text-link pairings for all the menus and navigation for the site.  Other documentation pages address changing the top nav, for links about the search bar, vairous side navs, or the bottom nav links.

DAV:  put general details about how the nav structure works including the child side navs.
{% include accordion/end-steps -%}


{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="_data/reading-room-files.yml" -%}
This file contains a list of file names and descriptions used when one of the components puts a link to a file on one of our pages.

For example, for most of the pages in the Reading Room or the the ones linked in the footer the page has the most recent file or two and an accordion that lists all the posted files in that section.  The file-list component generates a button for each file linked from that page.  The text of the button is set in reading-room-files.yml and is matched to the exact filename.

The structure in this yml file has a value for *updated:* and *description*.  At time of release to production only the press release page used the description but its there for future need.  The updated value should be entered with the date the file was added to the website for auditing purposes and because we may display that date on the pages in the future.  Better to keep record that date now.
{% include accordion/end-steps -%}

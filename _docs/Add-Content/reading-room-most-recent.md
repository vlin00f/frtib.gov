---
layout: docpage
title: Reading Room most recent
description: Update the recents updates section of the Reading Room
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
{% assign accStep = -1 -%}

{{page.description}}

{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="Discussion" expanded=true -%}
On the reading room landing page there is a list of the last 4 updates in the reading room section.  These are quick links to the 4 most recent changes in that section of the website.

When you add a new file to one of the subpages in the reading room section you should also edit the landing page to include one file from the area you just added a file while also removing the oldest in the list of four on the landing page.  Of course, you only do this if the file you added is newer then the four files listed already.  (You wouldn't do this is you are adding an older report or press release that was not released recently.)

The four most recent files list is controlled in the front matter of the reading room landing page: _pages/reading-room/index.md

The <span class="red">most_recent:</span> has one line for each file to be listed and they will be listed in the order they are listed in the frontmatter.  You can specify the file path and name of the file inside the _pdf/ folder but you only need to specify a unique prefix.

{% include accordion/end-steps -%}

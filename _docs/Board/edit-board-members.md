---
layout: docpage
title: Edit board member details
description: Alter board member list or change information about an entry
styles:
scripts:
#  - /assets/js/jquery.min.js
permalink: /:collection/:path/
completed: false
# redirect_from: /docs/FOLDER/
#  - /docs/board/
#document-ready:
#  - getRate();
---

## {% include docs/page-complete page=page -%}{{page.title}}

<h3 class="usa-sr-only">steps for {{page.title}}</h3>
{% assign accStep = 0 -%}
{{page.description}}

{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="Discussion" -%}
The contents of the [Board Members]({{site.baseurl}}/board-members) page are defined in a _data file, not in the .md file for the page.  To alter the structure of the page you will need a developer.  To update the member list and details about each member edit *_data/board.yaml*.

There is no limit on the number of board members but the code expects there to be only one executive director and one etac.  Below is an example on one entry in the file.  The description has been cut down for brevity.

<pre>
- name: Ravindra Deo
  group: executive-director
  description: Ravindra Deo serves as the Executive  ...
#  image: ravi-600_crop.jpg
</pre>

The name should be entered exactly how you want it to appear on the page.  It can contain HTML if you need special characters.  The group should be the value *board*, *executive-director*, or *etac*.  Description is a single line and has no length limit. It can contain HTML if needed.  There is code to display an image on the page but a missing or black value for image will leave this off the page for that entry.

{% include accordion/end-steps -%}


{% include docs/make-branch -%}


{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="edit <i>_data/board.yaml</i>" -%}
See the discussion accordion for details about the layout of the _data/ file.

Edit this file based on the needs of your task.  You can increase the number of board members in the list by a copy/paste of an exist entry and editing the copy with the details of the new member.  You can replace a member by editing the old one and putting in the details for the new member.  The name and description can contain HTML if you need special characters.

The order of the board members matches the order in the *_data/board.yaml* file.  For convenience, the entries in the file should be maintained in the order they show on the page but to change the order on the page requires a developer.  The board members will always be listed in order at the top of the page, then the one executive director, and then the ETAC.
{% include accordion/end-steps -%}


{% include docs/standard-end-steps -%}

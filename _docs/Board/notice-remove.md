---
layout: docpage
title: Remove board meeting notice
styles:
scripts:
#  - /assets/js/jquery.min.js
permalink: /:collection/:path
completed: false
# redirect_from: /docs/FOLDER/
#document-ready:
#  - getRate();
---

## {{page.title}}

<h3 class="usa-sr-only">steps for {{page.title}}</h3>
{% assign accStep = 0 -%}

After a board meeting the notice in the header is removed.  No additional information is needed for this task.

0. Discussion

To remove the announcement you dont need extra info.

1. make branch

2. edit header/main.html

In the file there is a line like \{\% include header/alert-board-meeting \%\}

Replace this with \{\% include header/alert-board-meeting \%\}

3. commit changes

4. send preview branch to requestor

5. merge with main

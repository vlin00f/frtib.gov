---
layout: docpage
title: Style sheets
description: Site style sheets
styles:
scripts:
#  - /assets/js/jquery.min.js
permalink: /:collection/:path/
completed: false
# redirect_from: /docs/Notes/
#document-ready:
#  - getRate();
---

## {% include docs/page-complete page=page -%}{{page.title}}

<h3 class="usa-sr-only">steps for {{page.title}}</h3>
{% assign accStep = 0 -%}

{{page.description}}

The print style sheet is in *_assets/css/frtib/print.scss*.  All of the CSS changes for this site are located in *_assets/css/frtib/*.  We tried to group them together to make them easier to find.  The master CSS file is *_assets/css/styles.scss*.  At the end of that file is a block of include statements that include the custom FRTIB changes.  The order of the files is important and follows the standard rules for CSS precedence.

We put all the FRTIB changes in files in a distinct directory to make updates/upgrade later easier.

If you need to alter the CSS on the site you will need a developer.

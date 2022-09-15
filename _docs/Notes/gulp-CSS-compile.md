---
layout: docpage
title: gulp CSS compile
description: Update CSS on website
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

Updating the website to use [USWDS 3.0+](https://designsystem.digital.gov/whats-new/updates/2022/04/28/introducing-uswds-3-0/){: target="_blank" } required adding a CSS compiler to the build.  The application used is *gulp* and is included in the project but the following stanza in the package.json file.

<pre>
"dependencies": {
  "@uswds/uswds": "^3.1.0",
  "gulp-sass": "^5.1.0",
  "sass": "^1.54.5"
},
</pre>

The CSS compiler works outside of the *bundle exec jekyll serve* command. If you change the CSS in any way, you need to rebuild the compiled CSS by running the following command before running the *bundle* command.

**npx gulp compile**

If you are doing development that includes changing the CSS you should stop the *bundle* command, run the *npx gulp compile* command and then restart the *bundle* (local web server).  This can be tedious but you only need to do it when the CSS (contents of the */sass* folder) is changed.  It is also a good idea to run this command before you start the local server with the *bundle* command when you are working on a fresh branch.  If running the *npx gulp compile* command results in unstaged changes before you make changes to is, then your CSS was previously changed and not recompiled.

Notes:
* Run **npx gulp compile** in the same window and location where you run **bundle exec jekyll serve**.
* The master CSS files are in */sass/*.
* The compiled CSS is in */assets/uswds/*.  Don't change these files directly as your changes would be overwritten.

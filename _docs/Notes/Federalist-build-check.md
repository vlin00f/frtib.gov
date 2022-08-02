---
layout: docpage
title: Federalist build check
description: One of two standard test done before a merge
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

Part of the standard USWDS/Federalist template (2.0) is automated build when a branch is changed.  Only a branch that has built successfully should be merged into *main*.

If the build of a branch on Federalist fails the preview (or production) site will not be updated with the content.  You can check the log on the Federalist page for clues as to what happened.

If your build is failing on the Federalist server the first thing to do is to make sure its compiling locally.  Halt your local server and run the following commands in your repository directory.

* bundle update
* bundle install
* npm update
* npm install

These commands will update your code to the latest versions of the various plug-ins the site builder uses.  If something actually updated and a new version got installed this could be why the Federalist build failed.  It always uses the lastest versions of plug-in based on the configuration settings in Gemfile and package.json.  Sometimes there are warnings when you run the above commands.  You can ignore them but you should look into any errors.  (The warnings are related to some plug-ins having new versions that we can't upgrade too because the site template was built in the past and the plug-ins are constantly being updated.  Its a waste of effort to clear these warnings because they usually dont affect the minor part of the plug-in we are using to build the site.)

Restart your local server and test your build.  When it works push any updates the above command made to the GitHub server and wait for the Federalist rebuild.  If that still fails and you can't clear the issue, put in a ticket to GSA with as much information about the problem that you have.

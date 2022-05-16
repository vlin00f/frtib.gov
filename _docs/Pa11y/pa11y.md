---
layout: docpage
title: Pa11y
styles:
scripts:
#  - /assets/js/jquery.min.js
permalink: /:collection/:path
completed: false
redirect_from: /docs/Pa11y/
#document-ready:
#  - getRate();
---

## {{page.title}}

Now pa11y is merged so all future branches should pass the pa11y/htmlproofer check.


When I was doing the pa11y one earlier it did fail with two timeouts on the scan.  This was happening a lot of first and I found a config setting that in place now that resolved it mostly, but I did have it happen today.  It happens when pa11y is running and attempts to check one of the urls and it takes too long.  There is a button that lets you rerun those checks and if you make a change to the branch while you are merging it will run them again automatically.  So if you see the timeout issue during a check while merging just redo it. If its persistent I can google again and try to find something that will make it try for longer before doing the timeout error.


Any other error besides a timeout error is a real issue.


When you are making big changes in a branch and anytime a new page is added you should do the following locally, before you merge.  Maybe we should always do it as a ready to merge step.


While running your local server open another terminal window in the same folder and run the following two commands:


                npm run pa11y-ci:sitemap


This runs pa11y on every page one by run.  At the end you should get something in green like: “50/50 URLs passed”


If you want to run pa11y on one specific file the command is:


                npx pa11y-ci http://localhost:4000/....


where that last argument is the url on your running localhost of the page you want to check.


                npm run htmlproofer


This runs some html checks on the site.  It will finish with blue text saying something like “Run on 124 files!  HTML-Proofer finished successfully.”  This is checking for broken links and some other HTML issues.  It does not verify offsite links as that will always fail on the federalist build for security.  It should make sure all the links on the site to itself go to pages.

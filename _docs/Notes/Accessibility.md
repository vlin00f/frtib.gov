---
layout: docpage
title: Accessibilty testing
description: One of two standard tests run before a merge
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
{% assign accStep = -1 -%}

{{page.description}}

Part of the standard USWDS/Federalist template (2.0) is automated accessibility testing when a copy of the site is built.  This test happens when a Pull request is done.

{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="Discussion" -%}
When an new pull request is initiated on the frtib.gov repositoy to merge one branch into another (usually new development into *main*) 2 checks are performed.  First is "Build and test Jekyll USWDS ..." which is an automated accessablity test.  The second check is whether current version of the branch successfully built on Federalist.  We try to make sure both pass (are green) before initiating the merge.

GitHub will allow you to initiate the merge if either or both of these checks failed but our policy is not to do that.  See the [Federalist build check]({{site.baseurl}}/docs/Notes/Federalist-build-check) page for details on the second check.

The accessibility check is actually about 12 steps but most of them are building a temporary instance of the site so that the two main tests, [pa11y](https://github.com/pa11y/pa11y) and [htmlproofer](https://github.com/pa11y/pa11y-ci) can be run.  The pa11y test is performed by the wrapper [pa11y-ci](https://github.com/pa11y/pa11y-ci).

These tests are configured for use in this project in the package.json file.

When you are making big changes in a branch and anytime a new page is added you should do the following 2 steps locally, **before you merge**.  We should always do them as a ready to merge step.
{% include accordion/end-steps -%}

{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="npm run htmlproofer" -%}
[HTMLProofer](https://github.com/gjtorikian/html-proofer) is a set of tests to validate your HTML output. These tests check if your image references are legitimate, if they have alt tags, if your internal links are working, and so on. It's intended to be an all-in-one checker for your output.

                npm run htmlproofer

This runs the html tests on the local site.  It will finish with blue text saying something like

                Run on 124 files!  HTML-Proofer finished successfully.

This is checking for broken links and some other HTML issues.  It does not verify offsite links as that will always fail on the federalist build for security.  It should make sure all the links on the site to itself go to valid pages/images.
{% include accordion/end-steps -%}

{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="npm run pa11y-ci:sitemap" -%}
[Pa11y](https://github.com/pa11y/pa11y) is your automated accessibility testing pal. It runs accessibility tests on your pages via the command line or Node.js, so you can automate your testing process.

[Pa11y CI](https://github.com/pa11y/pa11y-ci) is an accessibility test runner built using Pa11y focused on running on Continuous Integration environments.

Pa11y CI runs accessibility tests against multiple URLs and reports on any issues. This is best used during automated testing of your application and can act as a gatekeeper to stop a11y issues from making it to live.


While running your local server open another terminal window in the same folder and run the following two commands:


                npm run pa11y-ci:sitemap


This runs pa11y on every page one by run.  At the end you should get something in green like: “50/50 URLs passed”

If any of them fail use the command below to run pa11y on one individual page.  Review the output and fix the pages with issues and then run this test on the whole site again.

Note: It is normal to get warnings in your terminal window running your local copy of the site.  Pa11y runs fast and can overwhelm the local server.
{% include accordion/end-steps -%}

{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="npx pa11y-ci http://localhost:4000/..." -%}
If you want to run pa11y on one specific file the command is:


                npx pa11y-ci http://localhost:4000/...


where that last argument is the url on your running localhost of the page you want to check.
{% include accordion/end-steps -%}


{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="<span class='red'>Why did my <i>Run pa11y</i> fail on GitHub!</span>" -%}
If you perform the pa11y and htmlproofer test locally on your branch and the *Run pa11y* check failed when you attempted to merge, don't panic!  The automated test builds a temporary copy of the site and then runs pa11y on each page.  Sometimes the test runs so fast it overwhelms the site.

On GitHub click on the failed pa11y check and watch it run again.  (Yes, its building another temporary copy of the site and running again.)  Look at any errors in the pa11y.  If they indicate a timeout issue, its not your page, it ran to fast.  From that page choose the *Re-run failed jobs* select at the top right and *Re-run all jobs*.  This will run the test again but this time it will run slower and should pass if you verified pa11y and htmlproofer locally before you commited your changes to the branch.  If you didn't, see the other accordions on this page and do those steps before you try to merge this branch to *main*.
{% include accordion/end-steps -%}

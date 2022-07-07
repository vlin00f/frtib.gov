---
layout: docpage
title: ZIP file creation
description: Automatically build ZIP files during site build
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

In the onboarding section we have two areas with a large number of PDF files.  To save the user from having to download each file one at a time we combine the files into a ZIP file.  This was accomplished by adding rubyzip to the Gemfile and adding a ruby script *_plugins/create_PDF_zip_files.rb*.

At the end of *_plugins/create_PDF_zip_files.rb* are the following two lines:

<pre>
  make_zip_file "_pdf/onboarding/forms", "pdf/onboarding_forms.zip"
  make_zip_file "_pdf/onboarding/orientation", "pdf/onboarding_orientation.zip"
</pre>

To create another ZIP file duplicate one of the lines and change the two arguments to the ruby method call.  The first argument is the location of the folder that contains the files to ZIP and the second is the name of the file to create.  Then add a link to the ZIP file on the page you want it to appear.  The [*onboarding/forms*]({{site.baseurl}}/onboarding/forms/){: target="_blank" } page contains a call to the button link component to link the first ZIP file above:

<pre>
<p>
  A zip file containing all the PDFs in the accordion below:
  {&#37; include button-link url="/pdf/onboarding_forms.zip" text="Onboarding Forms [ZIP]" -&#37;}
  </p>
</pre>

Notes:
* The file paths to the files to zip are where they sit in the repository, i.e. the collection, relative to the top.
* The file path to the ZIP file you want to create is where it will sit on the *_site*, i.e. not in the collection.
* The ZIP files are made when the local server is started, not when any change is made.  Stop/Restart the local server each time you make a change in the collection to see the changes reflected in the ZIP file.
* Since the Federalist builder builds a new copy from scratch every time it will remake the ZIP file fresh on each build so production should never be out of date, even if you didn't remake the ZIP file on your local server.

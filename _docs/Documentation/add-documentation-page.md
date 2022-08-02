---
layout: docpage
title: Add documentation page
description: Add new documentation page or folder
styles:
scripts:
#  - /assets/js/jquery.min.js
permalink: /:collection/:path/
completed: false
# redirect_from: /docs/Documentation/
#document-ready:
#  - getRate();
---

## {% include docs/page-complete page=page -%}{{page.title}}

<h3 class="usa-sr-only">steps for {{page.title}}</h3>
{% assign accStep = 0 -%}

{{page.description}}


The documentation is contained in a collection named *_docs*.  It is organized into subfolders by topic.  The sidenav for the documentation area is generated from the contents of the folders in the collection.  There is not a defined sidenav for this area.

Simply add a new folder to create a new area.  Add \*.md files in a folder for each new page.  The folder and page name will be the url (/docs/folder/page-name) for the added page.

One of the pages in each folder should have a redirect_from for the folder to be the default page of that folder.

When you make changes to the documentation make sure you are in the documentation branch and you have fetched all changes on the server.

If you want to add a new page to an existing area copy one of the \*.md files in the folder (not *index.md*) giving it a new name appropriate to its purpose.  Edit the frontmatter title, description and set completed to false. Edit the lines in the content below the reference to *page.description*.  When you save this new file you should see its title and description on the [docs landing page]({{site.baseurl}}/docs) and you should see the new page in the area you added it on the sidenav when you are in the area.  You can click the links to the page to see it contents as soon as you save it.

The easiest way to add new area is to duplicate one of the existing folders in *_docs* and alter this copy to be the new area you need as follows.


{% assign accStep = 1 -%}
{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="Duplicate an existing documentation folder" -%}
Duplicate an existing *docs/* folder and give the new folder a name appropriate to this new grouping.
{% include accordion/end-steps -%}

{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="Delete extra new files" -%}
In the new folder delete all but the *index.md* and one other \*.md in the new folder.
{% include accordion/end-steps -%}

{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="Rename the other \*.md file" -%}
Rename the other \*.md file (not *index.md*) and give it a name appropriate to the task its documenting.
{% include accordion/end-steps -%}

{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="Edit the other \*.md file" -%}
Edit the frontmatter title, description and set completed to false. Edit the lines in the content below the reference to *page.description*.  As soon as you save the file and your local server rebuilds the site, you should be able to see the new area and page on the [docs landing page]({{site.baseurl}}/docs) and in the sidenav.
{% include accordion/end-steps -%}

{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="Edit <i>index.md</i>" -%}
Edit the *index.md* file and change the *redirect:* value in the frontmatter to the basename (don't include the *.md*) of the other page in the folder.
{% include accordion/end-steps -%}


{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="Finish edits and commit/push changes" -%}
Review your new page and complete your edits for the task you are documenting.  If you need more then the default page in the new folder duplicate the file (not the *index.md* file) and follow the steps to add a new page in an existing folder.

Once you have completed all your edits review your changes from the web, commit your changes and push the up to GitHub.
{% include accordion/end-steps -%}

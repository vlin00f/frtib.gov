---
layout: docpage
title: Add branch
description: Create a new branch to stage requested changes
styles:
scripts:
#  - /assets/js/jquery.min.js
permalink: /:collection/:path/
completed: false
# redirect_from: /docs/GitHub/
#document-ready:
#  - getRate();
---

## {% include docs/page-complete page=page -%}{{page.title}}


<h3 class="usa-sr-only">steps for {{page.title}}</h3>
{% assign accStep = 0 -%}

{{page.description}}

{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="Discussion" -%}
For audit history we only merge branches whose names are of the form

TASK#######-*purpose-user*

where ####### is the 7 digit task number from service now, purpose is a short clue as to what the branch was for, and user is a 3 letter code to represent the branch creator and developer responsible for the changes in the branch (-jas, -dav, -lab).

Email or other records of the request and approvals should be attached to the service now TASK.

These steps assume you are creating a branch from your work computer.

Consult GitHub documentation on how to create a branch from their website.
{% include accordion/end-steps -%}


{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="Make <i>main</i> your active branch" -%}
In GitHub Desktop or Atom on your local work computer, switch the main branch.
{% include accordion/end-steps -%}


{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="Fetch the latest <i>main</i>" -%}
Click the fetch button in GitHub desktop or atom to insure your local copy of *main* is up-to-date with the repository on GitHub.
{% include accordion/end-steps -%}


{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="Choose 'New Branch'" -%}
In atom choose *New Branch* at the bottom of the window and enter the name for the new branch.

In GitHub Desktop the *New Branch* button is near the top in the center.

For auditing, we name our branches

TASK#######-*purpose-user*

where ####### is the 7 digit task number from service now, purpose is a short clue as to what the branch was for, and user is a 3 letter code to represent the branch creator and developer responsible for the changes in the branch (-jas, -dav, -lab).
{% include accordion/end-steps -%}


{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="Publish the new branch" -%}
Click *Publish* to register your branch on the GitHub site.

You can now make local changes, stage those changes with a comment, and *Push* to GitHub.

Once you *Push* a change to GitHub the branch will be automatically compiled by Federalist.  If the build is succesful Federalist will include a link to a preview branch.  Each time you *Push* commited changes to GitHub Federalist will automatically rebuild your preview site.
{% include accordion/end-steps -%}

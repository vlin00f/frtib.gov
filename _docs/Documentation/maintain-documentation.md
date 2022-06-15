---
layout: docpage
title: Maintain documentation
description: Keep documentation branch up-to-date with production changes
styles:
scripts:
#  - /assets/js/jquery.min.js
permalink: /:collection/:path/
completed: false
# redirect_from: /docs/Documentation/
#document-ready:
#  - getRate();
---

{% assign previewName = "frtib-documentation-dav" -%}
{% assign previewURL = "https://federalist-17910b06-3ede-48a7-b216-90b5116c6220.app.cloud.gov/preview/frtib/frtib.gov/" | append: previewName -%}
## {% include docs/page-complete page=page -%}{{page.title}}

<h3 class="usa-sr-only">steps for {{page.title}}</h3>
{% assign accStep = -1 -%}

{{page.description}}

{% comment -%}Create two blocks used more than once later in this file.{% endcomment -%}
{% assign titleGet = "Switch to <i>" | append: previewName | append: "</i> locally" -%}
{% assign titleFetch = "Fetch <i>" | append: previewName | append: "</i>" -%}
{% capture getBranch -%}
You are updating the documentation branch so you need to editing it when you do the update.  In Atom or GitHub Desktop or whatever application you are using to manage your branches switch to the *{{previewName}}* branch.
{% endcapture -%}
{% capture fetchBranch -%}
Make sure you are up-to-date with any changes anyone else has made to *{{previewName}} by doing a fetch after you have switched to the branch.
{% endcapture -%}


The documentation pages are maintained within the repository but we do not want to expose them in production as discussed in [activate documentation]({{site.baseurl}}/docs/Documentation/activate-documentation).  In order to keep them available as needed we maintain a preview branch on Federalist named [{{previewName}}]({{previewURL}}).  If we allow the documentation branch to go stale the usefulness of information will be less useful.  Maintaining the documentation branch means updating the branch with all changes to production and updating production with any changes in the documentation.  Eventually it's expected that the documentation will stabilize and the only updates would be information about new features we've added to the site.

To keep the documentation branch up-to-date with changing in production we could simply delete the branch and then remake it by creating a new branch off of main with the same name and turning the documentation switch on but there is an even easier way.  We can merge all changes in production to this branch with a simple command but we must be in the correct state to do it.

{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="fetch <i>main</i>" -%}
Before updating the documentation branch with changes in *main* you need to make sure your local copy of *main* is up to date.

Locally switch to *main* and do a fetch.
{% include accordion/end-steps -%}

{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title=titleGet -%}
{{getBranch}}
{% include accordion/end-steps -%}
{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title=titleFetch -%}
{{fetchBranch}}
{% include accordion/end-steps -%}

{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="git merge main" -%}
Run the following git command in your terminal window:

<pre>
      git merge main
</pre>

When you run this command it will get a list of all the changes to production since the last time *{{previewName}}* was updated.  It will also stage all these changes.  You can click on each staged change to ensure nothing will be broken but since the existing documentation should never be edited in another branch, including *main* there should be no conflicts, only updates to files outside of the documentation area.

Note: if a major change was made to the site and documentation was added or altered with it that branch should not be showing the documentation when it was merged to main.  That should be ok.  Any changes to documentation done by this merge should be reviewed at this point but anything outside of *_docs* is not the responsibility of this branch.
{% include accordion/end-steps -%}


{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="Commit the changes and push" -%}
Once you have ensured the changes are good commit the changes in Atom or GitHub Desktop and push up the changes.  After Federalist has rebuilt the branch check it at [{{previewName}}]({{previewURL}}).

Consider if any of the site's recent changes make an update to documentation necessary and do those changes as needed.
{% include accordion/end-steps -%}

Changes to the site over time may require an update in the documentation.  The branch should be updated the way any other branch is updated but those changes need to be merged into *main*.  Before doing the following steps make sure you have done a commit and push to GitHub any changes you have in the documentation branch.  Check the branch and verify that documentation is turned on and verify the [docs home page]({{previewURL}}) and the [docs landing page]({{previewURL}}/docs) looks good.  This is to make sure you don't push a broken branch into *main*.

The most important thing is **do not merge this branch into *main* while the documentation is turned on**.  Do not skip steps in the following list!  Don't try to do it fast and review the text of each of the steps below.

{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title=titleGet -%}
{{getBranch}}
{% include accordion/end-steps -%}
{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title=titleFetch -%}
{{fetchBranch}}
{% include accordion/end-steps -%}

{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="turn off site documentation" -%}
See the discussion [here]({{site.baseurl}}/docs/Documentation/activate-documentation) about turning on/off the documentation pages.

Edit *_config.yml* and set the *collections.docs.output* value to false.  This turns off display of documentation on the website.
{% include accordion/end-steps -%}

{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="Stop and restart your localhost server" -%}
Restart your localhost server and load a page.  Check the top of that page below the the topnav and verify the Documentation link is not present.
{% include accordion/end-steps -%}

{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="Commit the branch change" -%}
Commit your change, push it up to GitHub, and wait for Federalist to build the branch.
{% include accordion/end-steps -%}

{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="Verify docs are turned off" -%}
Check the branch after Federalist has rebuilt it and verify that documentation is turned off and verify the [docs home page]({{previewURL}}) looks good and the [docs landing page]({{previewURL}}/docs) generates a 404 error.
{% include accordion/end-steps -%}

{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="Merge docs branch" -%}
Merge the documentation branch into *main* as normal.

Wait for Federalist to rebuild *main* and once its finished go to the [production homepage](https://www.frtib.gov) and verify the homepage looks good and go to [production docs landing page](https://www.frtib.gov/docs) to verify its off and you get a 404 error.

If the documentation is someone turned on use Atom or GitHub desktop, whichever tool you used to push the change to **UNDO** the change.
{% include accordion/end-steps -%}

{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="Turn docs back on in the docs branch" -%}
If you look on GitHub at the [repository's branches](https://github.com/frtib/frtib.gov/branches){: target="_blank" } you will see the documentation branch is marked as **Merged**.  We don't want to delete it, as we would normally do because this preview branch is our online immediate link to the docs.

Edit *_config.yml* and set the *collections.docs.output* value to true.  This turns display of documentation on the website back on.
{% include accordion/end-steps -%}

{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="Stop and restart your localhost server" -%}
Restart your localhost server and load a page.  Check the top of that page below the the topnav and verify the Documentation link is on the page again, below the topnav.
{% include accordion/end-steps -%}

{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="Commit the branch change" -%}
Commit your change, push it up to GitHub, and wait for Federalist to build the docs branch.
{% include accordion/end-steps -%}

{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="Verify docs are turned off" -%}
Check the branch after Federalist has rebuilt it and verify that documentation is turned on and verify the [docs home page]({{previewURL}}) looks good and the [docs landing page]({{previewURL}}/docs) once again shows the documentation pages.

This rebuild will also remove the **Merged** flag on the [repository's branches](https://github.com/frtib/frtib.gov/branches){: target="_blank" } page.
{% include accordion/end-steps -%}

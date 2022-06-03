---
layout: docpage
title: TSP Satisfaction
description: Update satisfaction percentages in homepage image
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

{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="Discussion" expanded=true -%}
The [homepage]({{site.baseurl}}) used to contain an image that was a summary of the periodic [participant satisfaction survey]({{site.baseurl}}/reading-room/participant-surveys/results/).  That 'image' is now built with CSS.  The CSS is located in *_assets/css/frtib/bargraph.scss* and the HTML is included on the homepage by calling *_includes/home/satisfaction*.

The change the percentages of the bar chart edit *_includes/home/satisfaction* and alter the three following lines:

{&#37; assign satisfied = 89 -&#37;}<br>
{&#37; assign neither = 9 -&#37;}<br>
{&#37; assign dissatisfied = 2 -&#37;}<br>

Change the whole numbers to the new whole number percentages.  Save and reload the homepage after the build completes and you should see your new values in the barchart.

?????? When you get the new participant satisfaction results you should also get the 3 values to place on the homepage. ?????

Any more complex changes will require a developer who knows liquid and CSS.
{% include accordion/end-steps -%}

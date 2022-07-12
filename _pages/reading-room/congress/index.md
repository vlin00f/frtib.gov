---
layout: page2
title: Reading Room Reports to Congress
styles:
sidenav: reading_room_nav
scripts:
#  - /assets/js/jquery.min.js
permalink: /reading-room/reports-to-congress/
redirect_from:
  - /congress
  - /reading-room-reports-to-congress
#document-ready:
#  - getRate();
---

## Reports to Congress

In compliance with §105 of the TSP Enhancement Act of 2009, Public Law 111- 31, the FRTIB prepares annual reports which outline the status of the development and implementation of the mutual fund window in the Thrift Savings Plan (TSP) as well as provide TSP participant statistics and investment manager diversity demographics.

FRTIB also provides to Congress summaries of education outreach efforts to TSP participants.  The FRTIB engages participants through the TSP website; emails to participants; videos, webinars, and a podcast; one-on-one communications; and customized trainings for participants, agency and service representatives, and military financial educators.

{% include file-list coll="pdf" folder="/reading-room/congress/annual/" format='title' reverse=true dobutton=true count=1 -%}
{% include file-list coll="pdf" folder="/reading-room/congress/education/" format='title' reverse=true dobutton=true count=1 -%}


<h3 class="usa-sr-only">Older annual reports, descending by year</h3>
<div class="usa-accordion">
{% include accordion/start expanded=false divID="annual-files" title="Previous Annual Reports" inList=false %}
{% include file-list coll="pdf" folder="/reading-room/congress/annual/" reverse=true format='title' dobutton=true dropFirst=true -%}
{% include accordion/end  inList=false %}
</div>

<h3 class="usa-sr-only">older educational efforts reports, descending by year</h3>
<div class="usa-accordion">
{% include accordion/start expanded=false divID="educational-files" title="Previous Reports on Education Efforts" inList=false %}
{% include file-list coll="pdf" folder="/reading-room/congress/education/" reverse=true format='title' dobutton=true dropFirst=true -%}
{% include accordion/end  inList=false %}
</div>

<!-- CONTENT END -->

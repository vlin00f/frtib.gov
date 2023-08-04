---
layout: page2
title: Reading Room Fact Sheets
styles:
sidenav: reading_room_nav
scripts:
#  - /assets/js/jquery.min.js
permalink: /reading-room/fact-sheets/
redirect_from:
  - /FactSheets
  - /Facts
#document-ready:
#  - getRate();
---

## Fact Sheets

TSP Fact Sheets


__Most Recent:__ {% include file-list coll="pdf" folder="/reading-room/FactSheets" format='title' reverse=true dobutton=true count=1 -%}

<h3 class="usa-sr-only">fact sheets, descending by year</h3>
<div class="usa-accordion">
{% include accordion/start expanded=false divID="all-files" title="Previous Fact Sheets" inList=false -%}
{% include file-list coll="pdf" folder="/reading-room/FactSheets" format='title' reverse=true dobutton=true dropFirst=true -%}
{% include accordion/end  inList=false -%}
</div>
<!-- CONTENT END -->

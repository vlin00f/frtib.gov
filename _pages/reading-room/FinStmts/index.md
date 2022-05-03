---
layout: page2
title: Reading Room Financial Statements
styles:
sidenav: reading_room_nav
scripts:
#  - /assets/js/jquery.min.js
permalink: /reading-room/financial-statements/
redirect_from:
  - /FinStmt
  - /reading-room-financial-statements
#document-ready:
#  - getRate();
---

## Financial Statements

An independent auditor provides a year-end audit of Thrift Savings Fund which describes the assets and liabilities of the Fund and provides the related notes accompanying the financial statements.


__Most Recent:__ {% include file-list coll="pdf" folder="/reading-room/FinStmts" format='title' reverse=true dobutton=true count=1 -%}

<h3 class="usa-sr-only">older financial reports, descending by year</h3>
<div class="usa-accordion">
{% include accordion/start expanded=false divID="all-files" title="Previous Financial Statements" inList=false -%}
{% include file-list coll="pdf" folder="/reading-room/FinStmts" format='title' reverse=true dobutton=true dropFirst=true -%}
{% include accordion/end  inList=false -%}
</div>
<!-- CONTENT END -->

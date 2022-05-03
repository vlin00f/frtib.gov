---
layout: wide
title: The Official FRTIB Homepage
styles:
sidenav:
scripts:
#  - /assets/js/jquery.min.js
permalink: /
return_to_top: false
redirect_from:
  - /index.html
  - /Home.html
#document-ready:
#  - getRate();
---

<div class="usa-grid-full">

<!-- top area -->
{% capture header -%}
<span class="usa-hero__heading--alt">FRTIB Strategic Plan</span>FY 2022-2026
{% endcapture -%}
{% capture body -%}
FRTIB’s mission is to help current and former civilian employees and members of the uniformed services prepare for their retirement years via the TSP.

Download the  FY22-26 Strategic Plan to see our plans for the next five years.

<a class="usa-button on-card" href="{{site.baseurl}}/reading-room/strategic-plan/">View the Strategic Plan</a>
{% endcapture -%}
{% assign body = body|markdownify -%}
{% include home/hero-callout label="Introduction" header=header body=body -%}

<!-- middle area -->
{% capture left -%}
Our Mission<br>Our Goals
{% endcapture -%}
{% capture right -%}
The FRTIB is charged by law to administer the TSP solely in the interest of the participants and beneficiaries.

We seek to improve participant retirement outcomes; provide top-tier defined contribution service to participants; function as a high-performing Agency; and transition successfully to a managed services operating model.  
{% endcapture -%}
{% assign right = right|markdownify -%}
{% include home/middle left=left right=right -%}

{% capture left -%}
Overall TSP Satisfaction
{% endcapture -%}
{% capture right -%}
<!--THIS IS BARCHART -->
<section class="bar-graph bar-graph-horizontal bar-graph-one">
 <div class="left-border-thick-line">
  <div class="bar-one">
    <span class="descr">Extremely Satisfied/Satisfied (89%)</span>
    <br clear="all">
    <div class="bar" data-percentage="89%"></div>
  </div>
  <br clear="all">
  <div class="bar-two">
    <span class="descr">Neither Satisfied nor Unsatisfied (9%)</span>
    <br clear="all">
    <div class="bar" data-percentage="9%"></div>
  </div>
  <br clear="all">
  <div class="bar-three">
    <span class="descr">Dissatisfied/Extremely Dissatisfied (2%)</span>
    <br clear="all">
    <div class="bar" data-percentage="0%"></div>
  </div>
 </div>
</section>
<!--END BARCHART-->
{% endcapture -%}
{% include home/middle left=left right=right -%}

<!-- bottom area above footer-->
{% include home/footer-feature-section -%}

</div>


<!-- CONTENT END -->

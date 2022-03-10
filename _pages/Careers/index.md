---
layout: page2
title: Careers
styles:
sidenav:
scripts:
  - careers.js
#  - /assets/js/jquery.min.js
permalink: /careers/
redirect_from:
  - /Careers.html
document-ready:
  - showOpenJobs();
---


## FRTIB: One of the Best Places to Work

{% include subscribe-button title="to receive Careers updates" topic_id="USTSP_7" -%}

<br>

{% capture job_openings -%}
<br>
{% include careers/list -%}
{% endcapture -%}

{% capture body -%}
Voted three years in a row as one of the "Best Places to Work in the Federal Government" as ranked by the Partnership for Public Service Best Places to Work Rankings, the Federal Retirement Thrift Investment Board (FRTIB) is an independent Federal Agency with a single mission: To administer the Thrift Savings Plan solely in the interest of its participants and beneficiaries.  We help Federal employees and members of the Uniformed Services retire with dignity by providing benefits similar to private sector 401(k) plans. The TSP manages over $390 billion for more than 4.6 million participants located in every time zone around the world.

{% include alert-block msg_type="success" msg_body=job_openings xmarkdownify=true msg_head="Current Job Openings" -%}

### Why work for the Federal Government?

From development programs to leadership training and retirement plans, the Federal government provides excellent benefits. NOTE: is there a brochure or a list of benefits that can be linked?

### Why should you choose to work at the FRTIB?

At the FRTIB, you'll work with a wide range of other professionals, from financial experts to tax attorneys.  We're charged with operating the Plan prudently and solely in the interest of the participants and their beneficiaries. NOTE: Is there a point of contact that can be listed for any questions?
{% endcapture -%}
{% include desc-box
      card_img="hero/careers_final.jpg" altText="Illustration of diverse group of people"
      card_body=body card_foot=foot_text -%}


<div class="grid-container">
<div class="grid-row">
<div class="tablet:grid-col" markdown="1">

### COVID-19 Workplace Safety Plan

The health and safety of the workforce is our top priority.  FRTIB established a COVID-19 Coordination Team responsible for the development of plans to create a safe environment and continue operations during the pandemic.

Click on the button below to download FRTIB’s COVID-19 Workplace Safety Plan

<a class="usa-button" href="{{site.baseurl}}FRTIB COVID-19 Workplace Safety Plan.pdf">FRTIB COVID-19 Workplace Safety Plan</a>

</div>
</div>
</div>



<!-- CONTENT END -->

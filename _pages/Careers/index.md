---
layout: page2
title: Careers@FRTIB
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
The Federal Retirement Thrift Investment Board (FRTIB) is a great place to work; and a place where great work gets done.  We are an independent Federal agency responsible for administering the Thrift Savings Plan (TSP) which is considered to be one of the best retirement plans in the world and a model for defined contribution plans. We are a diverse group of individuals with a shared focus on helping our participants achieve their desired retirement outcomes.  Do you want to make a lasting impact on the lives of our participants?  Join the FRTIB and help millions of civilian employees and members of the uniformed services prepare for one of the most significant financial decisions they will make in their lifetime, help them (and you) retire with dignity!

<h3 class="usa-sr-only">dynamic code to show current job openings</h3>
{% include alert-block msg_type="success" no-icon=true msg_body=job_openings xmarkdownify=true msg_head="Current Job Openings" -%}

### The benefits of working for the FRTIB

From development programs to a wide-variety of work/life-balance option, the FRTIB provides access to a range of benefits that are designed to make your FRTIB career rewarding.  Additionally, as a federal employee, you and your family will have access to a comprehensive federal benefits package.  Learn more about <a href="https://www.usajobs.gov/Help/working-in-government/benefits/" target="_blank" rel="noopener">federal benefits</a>.

Please contact <a href="mailto:hroperations@frtib.gov?subject=Questions regarding FRTIB benefits and employment">hroperations@frtib.gov</a> for any questions.

{% endcapture -%}
{% include desc-box
      card_img="hero/careers_final.jpg" altText="FRTIB's diversity in employment"
      card_body=body card_foot=foot_text -%}


<div class="grid-container">
<div class="grid-row">
<div class="tablet:grid-col" markdown="1">

### COVID-19 Workplace Safety Plan

The health and safety of the workforce is our top priority.  FRTIB established a COVID-19 Coordination Team responsible for the development of plans to create a safe environment and continue operations during the pandemic.

Click on the button below to download FRTIB’s COVID-19 Workplace Safety Plan

{% include file-list coll="pdf" folder="/careers/FRTIB COVID-19 Workplace Safety Plan - July 2022.pdf" reverse=true format='title' dobutton=true count=1 button_style="on-card thin" -%}

</div>
</div>
</div>



<!-- CONTENT END -->

---
layout: page2
title: onboarding
styles:
sidenav: onboarding_nav
scripts:
#  - /assets/js/jquery.min.js
permalink: /onboarding/
redirect_from:
  - /onboarding.html
#document-ready:
#  - getRate();
---

## Federal Employees

{% include subscribe-button title="to the Federal Employees update notifications" topic_id="USTSP_8" -%}

Welcome to the FRTIB Federal Employees! We are excited to begin working with you.

Your first days (and weeks) will be full of activities to in-process and onboard you into the agency. You will be required to complete several actions and forms designed to ensure your successful transition.

We have created an onboarding checklist to assist you in the onboarding process. Using the checklist and accessing the helpful websites in this document will guide you through the entire onboarding process. Please reach out to your HR point of contact with any questions.

{% include button-link url="/pdf/Onboarding/FRTIB-Onboarding-EmployeeOnly-Checklist-v4.pdf"
  text="Download the Federal employee onboarding checklist." -%}

### How to Use the Onboarding Checklist

This document serves as a list of tasks for the agency and you to complete, with corresponding timelines. While many of the listed items are transactional (i.e., completing a form), most items involve having important discussions with your supervisor in order to prepare you with the foundational knowledge of the FRTIB's mission and organization. Use this document in partnership with your supervisor and HR to ensure you receive all of the necessary and beneficial tools and information. Please note: Some of the links are not accessible outside of the agency's network.

Please visit the other sections of the FRTIB Onboarding page for information on various forms needed for in-processing, pre-onboarding training requirements, and information that is pertinent for New Employee Orientation.

<br>

<!-- cards starts here -->
<ul class="usa-card-group">
{% for room in site.data.navigation.onboarding_nav -%}
{% if forloop.first -%}{% continue -%}{% endif -%}
{% include card-no-media striped=true heading=room.name button_link=room.url
      xtext=room.text button_text=room.button_text image=room.image -%}
{% endfor -%}
</ul>
<!-- end of cards -->


<!-- CONTENT END -->

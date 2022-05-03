---
layout: page2
title: Reading Room Participant Surveys
styles:
sidenav: reading_room_nav
scripts:
#  - /assets/js/jquery.min.js
permalink: /reading-room/participant-surveys/
redirect_from:
  - /reading-room-participant-surveys/
  - /participant-surveys/
  - /SurveysPart
  - /PartSurveys
#document-ready:
#  - getRate();
---

## Participant Surveys

We are continually seeking ways to improve the services offered by the Thrift Savings Plan (TSP) and to increase participation in the Plan. We conduct annual TSP Participant Surveys to measure participant satisfaction with TSP features, services, and communications.

<br>

<!-- cards starts here -->
<ul class="usa-card-group">
{% for room in site.data.navigation.rr_partsurvey_nav -%}
{% include card-no-media heading=room.name button_link=room.url
      xtext=room.text button_text=room.button_text image=room.image -%}
{% endfor -%}
</ul>
<!-- end of cards -->

<!-- CONTENT END -->

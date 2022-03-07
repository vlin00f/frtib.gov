---
layout: page2
title: Reading Room
styles:
sidenav: reading_room_nav
scripts:
#  - /assets/js/jquery.min.js
permalink: /reading-room/
redirect_from:
  - /ReadingRoom.html
  - /ReadingRoom/
#document-ready:
#  - getRate();
---

## Reading Room

{% include subscribe-button title="to receive Reading Room updates" topic_id="USTSP_8" -%}
<br>

{% comment -%}{% asset recommend2.jpg -%}{% endcomment -%}

{% capture head_text -%}
Below you will find links to a variety of information about the FRTIB, starting with the law that created the FRTIB and the TSP, as well as financial statements, press releases, and surveys of employees and participants.

<br><br>
<strong>Latest Updates</strong>

<ul>
{% include file-list coll="pdf" folder="/reading-room/SurveysPart/TSP-" reverse=true format='title' dobutton=true count=1 addLI=true -%}
{% include file-list coll="pdf" folder="/reading-room/FinStmts" reverse=true format='title' dobutton=true count=1 addLI=true -%}
{% include file-list coll="pdf" folder="/reading-room/SurveysPart/Participant-Behavior" reverse=true format='title' dobutton=true count=1 addLI=true -%}
{% include file-list coll="pdf" folder="/reading-room/StratPlan" reverse=true format='title' dobutton=true count=1 addLI=true -%}
</ul>
{% endcapture -%}
{% include desc-box head_text=head_text foot_text=false -%}



<!-- cards starts here -->
<ul class="usa-card-group">
{% for room in site.data.navigation.reading_room_nav -%}
{% if forloop.first -%}{% continue -%}{% endif -%}
{% include card-no-media-striped heading=room.name button_link=room.url
      text=room.text button_text=room.button_text image=room.image -%}
{% endfor -%}
</ul>
<!-- end of cards -->

<!-- CONTENT END -->

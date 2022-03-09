---
layout: page2
title: Reading Room FOIA
styles:
sidenav: reading_room_nav
scripts:
#  - /assets/js/jquery.min.js
permalink: /foia/
#redirect_from:
#  - /foia
#document-ready:
#  - getRate();
---

## Freedom of Information Act (FOIA)

<!-- cards starts here -->
<ul class="usa-card-group">
{% for room in site.data.navigation.rr_foia_nav -%}
{% include card-no-media heading=room.name button_link=room.url
      xtext=room.text button_text=room.button_text image=room.image -%}
{% endfor -%}
</ul>
<!-- end of cards -->

<!-- CONTENT END -->

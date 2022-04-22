---
layout: page2
title: Privacy Policy
styles:
sidenav: privacy_nav
scripts:
#  - /assets/js/jquery.min.js
permalink: /privacy/
redirect_from:
  - /privacyPolicy.html
  - /privacy-policy.html
#document-ready:
#  - getRate();
---

## Website Privacy Policy

Thank you for visiting the Federal Retirement Thrift Investment Board’s (FRTIB) website and reviewing our privacy policy.
We are committed to protecting the privacy of everyone who visits our website.

Our policy for frtib.gov is that no personal information about you is collected.

<br>

<!-- cards starts here -->
<ul class="usa-card-group">
{% for room in site.data.navigation.privacy_nav -%}
{% if forloop.first -%}{% continue -%}{% endif -%}
{% include card-no-media striped=true heading=room.name button_link=room.url
      xtext=room.text button_text=room.button_text image=room.image -%}
{% endfor -%}
</ul>

<!-- CONTENT END -->

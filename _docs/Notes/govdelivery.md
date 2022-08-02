---
layout: docpage
title: GovDelivery
description: GovDelivery configuration
styles:
scripts:
#  - /assets/js/jquery.min.js
permalink: /:collection/:path/
completed: false
# redirect_from: /docs/Notes/
#document-ready:
#  - getRate();
---

## {% include docs/page-complete page=page -%}{{page.title}}

<h3 class="usa-sr-only">steps for {{page.title}}</h3>
{% assign accStep = 0 -%}

{{page.description}}

GovDelivery is a service that will monitor your site and send emails to your users when specific pages change.  We have *subscribe* links on several pages the users can click to add/remove their email from the list for updates to that page.

When GovDelivery notices a page has changed, our account is configured to send an verification email to our admin to confirm sending of the email.

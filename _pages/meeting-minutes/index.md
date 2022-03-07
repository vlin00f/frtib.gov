---
layout: page2
title: Meeting Minutes
styles:
# sidenav:
scripts:
#  - /assets/js/jquery.min.js
permalink: /meeting-minutes/
return_to_top: true
redirect_from:
  - /MeetingMinutes.html
  - /MeetingMinutes/
#document-ready:
#  - getRate();
---

{% comment -%}
{% include alert-block msg_type="info" msg_head="info head" msg_body="this is the info message" -%}
{% include alert-block msg_type="warning" msg_head="warning head" msg_body="this is the warning message" -%}
{% include alert-block msg_type="error" msg_head="error head" msg_body="this is the error message" -%}
{% include alert-block msg_type="success" msg_head="success head" msg_body="this is the success message" -%}
{% endcomment -%}


## Meeting Minutes

{% include subscribe-button title="to receive Meeting Minutes updates" topic_id="USTSP_6" -%}

<br>

{% comment -%}
**Board Meeting Calendar**:   [2022]({{site.baseurl}}/pdf/board-meetings/2022_Board_Meeting_Calendar_schedule.pdf){:target="_blank"}
{% endcomment -%}
{% capture head_text -%}
Board meetings, which can be observed by the public, are generally held the 4<sup>th</sup> Tuesday of each month (except where noted on the current meeting calendar).
{% endcapture -%}
{% capture foot_text -%}
<a href="{{site.baseurl}}/pdf/board-meetings/2022_Board_Meeting_Calendar_schedule.pdf" target="_blank"><button class="usa-button on-card thin">2022 Board Meeting Calendar</button></a>
{% endcapture -%}
{% include desc-box head_text=head_text foot_text=foot_text -%}
{% include meeting-minutes/full-list  -%}

<!-- CONTENT END -->

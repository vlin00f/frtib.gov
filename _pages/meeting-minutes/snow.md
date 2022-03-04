---
layout: page2
title: Meeting Minutes
styles:
# sidenav:
scripts:
#  - /assets/js/jquery.min.js
permalink: /meeting-minutes2/
#document-ready:
#  - getRate();
---

<style>
/* customizable snowflake styling */
.snowflake {
  color: #fff;
  font-size: 1em;
  font-family: Arial, sans-serif;
  text-shadow: 0 0 5px #000;
}

@-webkit-keyframes snowflakes-fall{0%{top:-10%}100%{top:100%}}@-webkit-keyframes snowflakes-shake{0%,100%{-webkit-transform:translateX(0);transform:translateX(0)}50%{-webkit-transform:translateX(80px);transform:translateX(80px)}}@keyframes snowflakes-fall{0%{top:-10%}100%{top:100%}}@keyframes snowflakes-shake{0%,100%{transform:translateX(0)}50%{transform:translateX(80px)}}.snowflake{position:fixed;top:-10%;z-index:9999;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;cursor:default;-webkit-animation-name:snowflakes-fall,snowflakes-shake;-webkit-animation-duration:10s,3s;-webkit-animation-timing-function:linear,ease-in-out;-webkit-animation-iteration-count:infinite,infinite;-webkit-animation-play-state:running,running;animation-name:snowflakes-fall,snowflakes-shake;animation-duration:10s,3s;animation-timing-function:linear,ease-in-out;animation-iteration-count:infinite,infinite;animation-play-state:running,running}.snowflake:nth-of-type(0){left:1%;-webkit-animation-delay:0s,0s;animation-delay:0s,0s}.snowflake:nth-of-type(1){left:10%;-webkit-animation-delay:1s,1s;animation-delay:1s,1s}.snowflake:nth-of-type(2){left:20%;-webkit-animation-delay:6s,.5s;animation-delay:6s,.5s}.snowflake:nth-of-type(3){left:30%;-webkit-animation-delay:4s,2s;animation-delay:4s,2s}.snowflake:nth-of-type(4){left:40%;-webkit-animation-delay:2s,2s;animation-delay:2s,2s}.snowflake:nth-of-type(5){left:50%;-webkit-animation-delay:8s,3s;animation-delay:8s,3s}.snowflake:nth-of-type(6){left:60%;-webkit-animation-delay:6s,2s;animation-delay:6s,2s}.snowflake:nth-of-type(7){left:70%;-webkit-animation-delay:2.5s,1s;animation-delay:2.5s,1s}.snowflake:nth-of-type(8){left:80%;-webkit-animation-delay:1s,0s;animation-delay:1s,0s}.snowflake:nth-of-type(9){left:90%;-webkit-animation-delay:3s,1.5s;animation-delay:3s,1.5s}.snowflake:nth-of-type(10){left:25%;-webkit-animation-delay:2s,0s;animation-delay:2s,0s}.snowflake:nth-of-type(11){left:65%;-webkit-animation-delay:4s,2.5s;animation-delay:4s,2.5s}
</style>
<div class="snowflakes" aria-hidden="true">
  <div class="snowflake">
  ❅
  </div>
  <div class="snowflake">
  ❆
  </div>
  <div class="snowflake">
  ❅
  </div>
  <div class="snowflake">
  ❆
  </div>
  <div class="snowflake">
  ❅
  </div>
  <div class="snowflake">
  ❆
  </div>
  <div class="snowflake">
    ❅
  </div>
  <div class="snowflake">
    ❆
  </div>
  <div class="snowflake">
    ❅
  </div>
  <div class="snowflake">
    ❆
  </div>
  <div class="snowflake">
    ❅
  </div>
  <div class="snowflake">
    ❆
  </div>
</div>

{% comment -%}
{% include alert-block msg_type="info" msg_head="info head" msg_body="this is the info message" -%}
{% include alert-block msg_type="warning" msg_head="warning head" msg_body="this is the warning message" -%}
{% include alert-block msg_type="error" msg_head="error head" msg_body="this is the error message" -%}
{% include alert-block msg_type="success" msg_head="success head" msg_body="this is the success message" -%}
{% endcomment -%}

{% include subscribe-button title="to the Meeting Minutes update notifications" topic_id="USTSP_6" -%}

## Meeting Minutes

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

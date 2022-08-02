---
layout: docpage
title: Search.gov setup
description: Overview of Search.gov setup for this site
styles:
scripts:
#  - /assets/js/jquery.min.js
permalink: /:collection/:path/
completed: false
#redirect_from: /docs/Search/
#document-ready:
#  - getRate();
---

## {% include docs/page-complete page=page -%}{{page.title}}

<h3 class="usa-sr-only">steps for {{page.title}}</h3>
{% assign accStep = -1 -%}

{{page.description}}


{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="USWDS code" -%}
The Federalist site base code (USWDS) has hooks to work with search.gov and present the search inline on your site. That code only supports the top level everything search. See <https://search.gov/get-started/searchgov-for-federalist.html>{: target="_blank"}.  If you are making changes to the search code (requires a developer) you should read the search.gov getting started page to get a general idea how it works.  Create the search.gov account (or log into the FRTIB one) and look around but dont make changes until you understand how its all connected.  In particular, review the *activate* section, *API Access Key* option.  This is the string you need to save in the configuration to use the search object you build on search.gov.  Once you've read their guide continue reading here.

Dav altered the default code so that we could could use the search filters inline on our site.  With the default code your can have the *everything* search inline but if you want to use search filters you have to use their hosted site which has simple branding.

The first step in setting up search was editing the *searchgov:* section of *_config.yml*.  Review the values.  This has the setting to use inline search or their hosted search.  By default its where the API key is entered.  You shouldn't need to alter these values if you are adding a new filter.  In fact, the affiliate and access key value here are not used and instead are in */search/search_script* as part of Dav's changes to use the search_filters inline.  You shouldn't need to alter the search settings in *_congig* unless you are turning off search for the site.

The original USWDS code is in *search/* when you build your initial site from the template and includes two files, *index.html* and *search_script*.

*index.html* is the web page you go to after using the search box that is in the header of the default layout for all pages in the USWDS.  It has been altered to include the search filters and the ability to switch between them and to have the pagination links at the bottom to move forward through the results.  The original inline code gave you 20 hits but didn't let you page forward to see more.

*search_script* is a block of JavaScript that is included inline in the *index.html*. This was included in the original template code and contains the Ajax call to ask for a search and pull back the results. You cannot move this to the */assets/js/* folder.  Its included inline because it contains liquid code that uses some values from *_config*. This can't be done with JavaScript that is included with a script tag.  This file was altered from the original by Dav to deal with the choice of search filter, format the results to be more readable, and read values from the query string when paging through results of a search.  There is additional JavaScript in *assets/js/search.js* that contains code for pagination and search filters but doesn't not need embedded liquid code.

If you are adding a search filter you will need to edit the code near the end of the *search_script* file so the code knows about the new filter and its API_KEY for the Ajax call.  You will also need to edit *_data/navigation.yml* and the *search_nav* block to add the new filter to the list.  The *name* is the text on the search filter tab and *group* must match what you use for group when you edited the code at the end of *search_script*.  For simplicity I used names that match the search names on search.gov.
{% include accordion/end-steps -%}


The accordion below is a cut and paste of an email Dav sent after initially setting up search.  It may be useful if changes need to be made later.

{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="Dav email about search" -%}

When you setup a new cloud.gov (formally Federalist) site it has code to use digital.gov (formally search.gov or USA search) built in. There are instructions to setup a search.gov account and get basic, Bing enabled, hosted search working.

<https://search.gov/get-started/site-launch-guide.html>

From step 3: By default a new search site will be connected to the Bing web index to receive web results. Websites with very low levels of search traffic can continue to use the Bing web index after they launched our service. However, sites that will see greater than 150,000 queries per year will need to be indexed directly by our service before going live. We monitor new sites established in our system, and will reach out if we think your site will need to be indexed by us, or if we need more information to make a determination.

So, before you go live you make the search.gov account and setup collections if you want them. Collections are a simple filter to restrict search results to specific parts of the site.

Once you are live by your request or their determination they index your site. You must make a sitemap.xml that lists every page on your site. Search.gov does not crawl the site. The search only indexes the pages in your sitemap.xml. I setup this up to build automatically before we went live.

[sitemal.xml]({{site.baseurl}}/sitemap.xml)  (use chrome to view it, chrome auto formats it for reading)

(Note, when you add/remove pages the sitemap doesn’t need updating. This morning Jas added privacy and cookies, and 2 other pages. If you search for privacy in that page you will see the other three new pages in the lines above and below.)

Once sitemap is in place search.gov can index your site based on that file. I made the request to do that when we went live. I had warned them I would be doing it. We couldn’t index before going live because they couldn’t see the site until it was live (in production at www.frtib.gov). About 24 hours after going live, search.gov had indexed our sitemap and all searches automatically switched from Bing to their internal code.

The Federalist site base code also had hooks to work with search.gov and present the search inline on your site. That code only supports the top level everything search. See <https://search.gov/get-started/searchgov-for-federalist.html> Once we were live I configured search.gov for the search filters we want (reports, part and emp surveys, meeting minutes) and added code on the inline search page to switch between filters and altered the results a little (added numbering, the green text link, hits per page). The hard part was adding the pagination block at the bottom to show the next set of links.) That code when live this week.

The search.gov search engine seems pretty strong. You can make minor misspellings and it searches some synonyms automagically. We are using search.gov but we are using API calls to get the results and format them on our page template instead of the simple hosted result list on their site. It’s the exact same search, same results, just presented inline instead of hosted. TSP.gov works exactly the same way. The code on frtib.gov is simpler because the API on search.gov was improved since we built it there. Note that a lot of other sites used the hosted site. I think that’s because setting up the filters and doing that inline is a little confusing to understand and setup. But the search.gov is strong and better than a simple exact keyword search. It would be a lot of work to duplicate that. <https://search.gov/indexing/ranking-factors.html> Plus, they are constantly improving their engine.
{% include accordion/end-steps -%}

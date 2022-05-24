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

## {{page.title}}

<h3 class="usa-sr-only">steps for {{page.title}}</h3>
{% assign accStep = 0 -%}

{{page.description}}

Email from dav after setting up search.gov is below. This needs to be rewritten for this page.

You need a search.gov account and access to the FRTIB search sites.

DAV:  Description of adding/removing a search site to this site.

DAV:  Describe the various files in search/ and what each one does.

<hr>

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

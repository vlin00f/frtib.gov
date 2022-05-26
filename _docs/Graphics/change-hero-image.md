---
layout: docpage
title: Add documentation page
styles:
scripts:
#  - /assets/js/jquery.min.js
permalink: /:collection/:path/
completed: false
# redirect_from: /docs/Documentation/
#document-ready:
#  - getRate();
---

## {% include docs/page-complete page=page -%}{{page.title}}

<h3 class="usa-sr-only">steps for {{page.title}}</h3>
{% assign accStep = 0 -%}

{{page.description}}?

{% comment -%}###############################################################{% endcomment -%}
{% include accordion/start-steps title="Discussion" -%}
There are several types of images on the site: the homepage hero image, the two  feature boxes at the bottom of the homepage, the main landing pages' banners, and the 404.html page graphic.

Must have Adobe Photoshop for basic editing, and Adobe Illustrator for vector image editing (for changing out/rearranging elements within the actual image.)

When it's time to replace images, search through istockphoto.com for appropriate vector illustrations.  For hero images, make sure the focus of the image is on the right side, as the callout box will sit on top of the image on the left.  For banner images, choose illustrations that are relevant to the content of the page.  Always try to choose illustrations that show diversity, or can be edited for diversity.  Vector images can also be edited in Illustrator to match the approved color palette.

When purchasing and downloading images from istockphoto, download the largest size image available.  Always save an original, unedited copy to keep in a library for future re-use.  

PSD templates for banners and hero image are available at _docs/_image_raw.  The homepage hero PSD templates have ruler guides for optimal positioning.  It also has background layers with current approved primary color palette.  PSD files are also set for the size that images should be saved.  

There is also a copy of the white FRTIB seal in the _image_raw folder.

Images on site are saved as jpg for optimized size, but can be saved as a png.  The current unedited eps files used on the site are in _docs/_image_raw/unedited_image_libary.  

Sizing:
Hero image: 2048x820
Homepage Features: 150x150
Banner: 1800x500

The site web style guide is located here _docs/_image_raw/Web_Style-GuideR.pdf - use this guide's approved color palette.



{% include accordion/end-steps -%}

Update/replace Hero image on homepage

Move hero image to _assets/img/hero
Copy hero image name
Open _assets/css/frtib/other.scss
Scroll to find .usa-hero
Edit background-image: asset_url("hero/PASTE HERO IMAGE HERE");
Save other.scss


Update/replace Homepage Feature Images

Move feature images (root) to _assets/img/
Open _includes/home/footer-feature-section
Look for {% capture left -%} to edit the link, text and image on the left column.
Look for {% capture right-header -%} to edit the link, text and image on the right column.
Save footer-feature-section

Update Subpage Banner Images

Move banner image(s) to _assets/img/
Go to _pages/ and choose the landing page's folder that needs to be unedited
Open _pages/FOLDER/index.md
Look for card_img= and edit the image name, and altText
Save index.md

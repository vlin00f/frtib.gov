---
layout: docpage
title: Site Images
description: Change image on site
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

{{page.description}}

There are several types of images on the site: the homepage hero image, the two  feature boxes at the bottom of the homepage, the main landing pages' banners, and the 404.html page graphic.

Must have Adobe Photoshop for basic editing, and Adobe Illustrator for vector image editing (for changing out/rearranging elements within the actual image.)

When it's time to replace images, search through istockphoto.com for appropriate vector illustrations.  Photos can also be used, but these tend to get dated very quickly.  

For hero images, make sure the focus of the image is on the right side -- or can be edited to place on the right -- as the callout box will sit on top of the image on the left.  For banner images, choose horizontal illustrations that are relevant to the content of the page.  Always try to choose illustrations that show diversity, or can be edited for diversity.  Vector images can also be edited in Illustrator to match the approved color palette.

When purchasing and downloading images from istockphoto, download the largest size image available.  Always save an original, unedited copy to keep in a library for future re-use.  

PSD templates for banners and hero image are available at *_docs/_image_raw* (ZIP file).  The homepage hero PSD templates have ruler guides for optimal positioning.  It also has background layers with current approved primary color palette.  PSD files are also set for the size that images should be saved.  

Images on site are saved as jpg for optimized size, but can be saved as a png.  The current unedited eps files (zip file), including the white FRTIB seal used on the site are in *_docs/_image_raw/unedited_image_libary*.  

**Sizing:**
<br>Hero image: 2048x820
<br>Homepage Features: 150x150
<br>Banner: 1800x500

The site web style guide is located at [_docs/Graphics/Web_Style_GuideR.pdf]({{site.baseurl}}/docs/Graphics/Web_Style_GuideR.pdf){: target="_blank"} - use this guide's approved color palette.

An excel spreadsheet with istockphoto links to current images on the site is also in [_docs/Graphics/FRTIB_ImagesList_FINAL.xlsx]({{site.baseurl}}/docs/Graphics/FRTIB_ImagesList_FINAL.xlsx){: target="_blank"}.

An accessibility guide can be found here: [_docs/Graphics/Accessibility_for_PDFs.docx]({{site.baseurl}}/docs/Graphics/Accessibility_for_PDFs.docx){: target="_blank"}

Once old images are no longer in use, move to *__unused-images* to archive

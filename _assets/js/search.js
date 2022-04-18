// Used by search page


function onSearchSubmit() {
  var limit = document.getElementById('limit').value;
  if (limit != 20) { addElement('limit', limit, 'search_form_div'); }
  return true;
}

function doSearch(group, dc) {
  /* code to use search.gov
  var query = document.getElementById('extended-search-field-big').value;
  window.location.href = "https://search.usa.gov/search/docs?affiliate=frtib.gov&dc="+dc+"&query="+query;
  return;
  */
  var limit = document.getElementById('limit').value;
  if (limit != 20) { addElement('limit', limit, 'search_form_div'); }
  document.getElementById('group').value = group;
  // document.getElementById('dc').value = dc;
  document.getElementById('search_form_page').submit();
}

function addElement(name, value, form) {
  var input = document.createElement("input");
  input.type = 'text';
  input.name = name;
  input.value = value;
  // console.log(input, name, value, form);
  document.getElementById(form).appendChild(input);
  return true;
}

function goToPage(page) {
  var limit = document.getElementById('limit').value;
  if (limit != 20) { addElement('limit', parseInt(limit), 'search_form_div'); }
  addElement('offset', parseInt(limit * (page-1)), 'search_form_div');
  document.getElementById('search_form_page').submit();
  return false;
}


function makePaginationLink(page, linkFlag, maxPage) {
  if (page < 1) { return ''; }
  if (page > maxPage) { return ''; }
  if (linkFlag) {
    return '<a href="javascript:void(0)" class="search-page" onClick="goToPage('+page+');">'+page+'</a>'+"\n";
  }
  return '<em class="search-page">'+page+'</em>'+"\n";
}
function makePrevNextLink(direction, page, maxPage) {
  page = parseInt(page);
  var rel = 'prev';
  if (direction == 'Next') { rel = 'next'; }
  if ((page < 1) || (page > maxPage)) {
    return '<span class="search-'+ direction.toLowerCase() + ' disabled">'
        + direction +'</span>'+"\n";
  }
  return '<a rel="'+rel+'" class="search-'+ direction.toLowerCase()
      + '" href="javascript:void(0)" onClick="goToPage('+page+');">'
      + direction +'</a>'+"\n";
}
function buildPaginationBlock(total, page, offset, limit) {
  page = parseInt(page);

  var maxPage = parseInt((total-1) / limit)+1;
  var maxLinks = 5;
  var numLinks = 0;
  var paginationBlock = '';
  var str = '';
  paginationBlock += makePrevNextLink('Previous', page-1, maxPage);
  var i = page - parseInt(maxLinks/2);
  if (i > 1) { paginationBlock += makePaginationLink(1, true, maxPage); }
  if (i == 3) { paginationBlock += makePaginationLink(2, true, maxPage); }
  if (i > 3) { paginationBlock += '<span class="gap">...</span>' + "\n"; }
  for (; i < page+maxLinks; i++) {
    str = makePaginationLink(i, (i != page), maxPage);
    paginationBlock += str;
    if (str != '') { numLinks++; }
    if (numLinks >= maxLinks) { break; }
  }
  paginationBlock += makePrevNextLink('Next', page+1, maxPage);
  return paginationBlock;
}

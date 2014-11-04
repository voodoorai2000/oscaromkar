ready = ->
  categories = gon.categories if gon

  for category in categories
    $(".#{category}").colorbox({rel:"#{category}", maxHeight: '100%'});

$(document).ready(ready)
$(document).on('page:load', ready)
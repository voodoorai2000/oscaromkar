ready = ->
  artwork    = ["BlackAndWhite", "Creativity", "Digital", "Frotage", "Ink", "Inspirations", "Paint", "Pencil", "WaterColor"]
  projects   = ["Anne_Frank_Workshop", "Avatar_Mural", "Bubbles", "Caravan_Cabin", "Didjeridoo_Workshop", "Horse_Box", "Magic_Bus", "New_York_Skyline", "Truck_Mural", "WC_Shed"]
  categories = artwork.concat projects

  for category in categories
    $(".#{category}").colorbox({rel:"#{category}", maxHeight: '100%'});

$(document).ready(ready)
$(document).on('page:load', ready)
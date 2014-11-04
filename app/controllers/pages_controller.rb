class PagesController < ApplicationController

  def artwork
    @categories = ["BlackAndWhite", "Creativity", "Digital", "Frotage", "Ink", "Inspirations", "Paint", "Pencil", "WaterColor"]
  end

  def projects
    @categories = ["Anne_Frank_Workshop", "Avatar_Mural", "Bubbles", "Caravan_Cabin", "Didjeridoo_Workshop", "Horse_Box", "Magic_Bus", "New_York_Skyline", "Truck_Mural", "WC_Shed"]
  end

  def about
    @categories = []
  end

end

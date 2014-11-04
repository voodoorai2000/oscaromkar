class PagesController < ApplicationController
  before_action :set_javascript_variables, except: [:about]

  def artwork
    @categories = artwork_categories
  end

  def projects
    @categories = project_categories
  end

  def about
  end

  private

  def artwork_categories
    ["BlackAndWhite", "Creativity", "Digital", "Frotage", "Ink", "Inspirations", "Paint", "Pencil", "WaterColor"]
  end

  def project_categories
    ["Anne_Frank_Workshop", "Avatar_Mural", "Bubbles", "Caravan_Cabin", "Didjeridoo_Workshop", "Horse_Box", "Magic_Bus", "New_York_Skyline", "Truck_Mural", "WC_Shed"]
  end

  def set_javascript_variables
    gon.categories = artwork_categories + project_categories
  end

end

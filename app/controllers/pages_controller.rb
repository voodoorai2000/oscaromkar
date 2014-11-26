class PagesController < ApplicationController
  before_action :set_javascript_variables

  def artwork
    @categories = artwork_categories
    render_cached
  end

  def projects
    @categories = project_categories
    render_cached
  end

  def about
  end

  def hidden
  end

  private

  def artwork_categories
    ["BlackAndWhite", "Pencil", "Digital", "WaterColor", "Ink", "Creativity", "Frotage", "Paint", "Inspirations"]
  end

  def project_categories
    ["Magic_Bus", "New_York_Skyline", "Bubbles", "Caravan_Cabin", "Avatar_Mural", "Horse_Box", "Didjeridoo_Workshop", "WC_Shed", "Anne_Frank_Workshop", "Truck_Mural"]
  end

  def set_javascript_variables
    gon.categories = artwork_categories + project_categories
  end

  def render_cached
    expires_in 2.years
    fresh_when(last_updated, public: true)
  end

  def last_updated
    "25 nov 2014".to_time
  end

end

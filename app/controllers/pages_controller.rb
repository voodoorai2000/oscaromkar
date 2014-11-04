class PagesController < ApplicationController

  def artwork
    @categories = ["BlackAndWhite", "Creativity", "Digital", "Frotage", "Ink", "Inspirations", "Paint", "Pencil", "WaterColor"]
  end

  def projects
    @categories = []
  end

  def about
    @categories = []
  end

end

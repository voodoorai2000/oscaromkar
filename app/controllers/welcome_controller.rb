class WelcomeController < ApplicationController  
  
  def index
    @categories = ["BlackAndWhite", "Creativity", "Digital", "Frotage", "Ink", "Inspirations", "Paint", "Pencil", "WaterColor"]
  end

end

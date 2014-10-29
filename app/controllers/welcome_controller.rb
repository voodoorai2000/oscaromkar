class WelcomeController < ApplicationController  
  
  def index
    @categories = ["Ink", "Watercolor", "Pencil"]
  end

end

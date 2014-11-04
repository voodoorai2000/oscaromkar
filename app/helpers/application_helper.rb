module ApplicationHelper

  def category_image(category)
    "/assets/Artwork/CategoryImages/#{category.upcase}.jpg"
  end

  def image_name(category, index)
    "/assets/Artwork/#{category}/#{index}.jpg"
  end
end

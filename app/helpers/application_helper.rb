module ApplicationHelper

  def first_image(category)
    image_name(category, 1)
  end

  def image_name(category, index)
    "/assets/Art/#{category}/#{index}.jpg"
  end
end

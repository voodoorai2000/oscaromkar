module ApplicationHelper

  def category_image(category)
    "/assets/Artwork/CategoryImages/#{category.upcase}.jpg"
  end

  def image_name(category, index)
    "/assets/Artwork/#{category}/#{index}.jpg"
  end

  def folder(category)
    "#{Rails.root}/app/assets/images/Artwork/#{category}/"
  end

  def image_count(category)
    dir = folder(category)
    Dir[File.join(dir, '**', '*')].count { |file| File.file?(file) } - 1
  end
end

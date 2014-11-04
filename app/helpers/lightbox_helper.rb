module LightboxHelper

  def name(category)
    category.gsub("_", " ")
  end

  def category_image(category)
    "/assets/#{action_name}/CategoryImages/#{category.upcase}.jpg"
  end

  def image_name(category, index)
    "/assets/#{action_name}/#{category}/#{index}.jpg"
  end

  def folder(category)
    "#{Rails.root}/app/assets/images/#{action_name}/#{category}/"
  end

  def image_count(category)
    dir = folder(category)
    Dir[File.join(dir, '**', '*')].count { |file| File.file?(file) } - 1
  end

  def missing_text_image?(index)
    action_name == 'projects' and index == 0
  end

end
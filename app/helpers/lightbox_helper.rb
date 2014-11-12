module LightboxHelper

  def name(category)
    category.gsub("_", " ")
  end

  def category_image(category)
    image_path "#{action_name.capitalize}/CategoryImages/#{category.upcase}.jpg"
  end

  def image_name(category, index)
    image_path "#{action_name.capitalize}/#{category}/#{index}.jpg"
  end

  def folder(category)
    "#{Rails.root}/app/assets/images/#{action_name.capitalize}/#{category}/"
  end

  def image_count(category)
    dir = folder(category)
    Dir[File.join(dir, '**', '*')].count { |file| File.file?(file) } - 1
  end

  def missing_text_image?(index)
    action_name == 'projects' and index == 0
  end

end
module ApplicationHelper

  def menu_link(title, path, options={})
    content_tag :li do
      link_to title, path, options.merge(selected(title))
    end
  end

  def selected(title)    
    (request.original_url.match(/#{title}/i) or home(title)) ? {class: 'selected'} : {}
  end

  def home(title)
    title == 'Artwork' and request.original_url == root_url
  end

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

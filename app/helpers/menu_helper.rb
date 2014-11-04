module MenuHelper
  
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

end
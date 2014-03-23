module SocialLinks

  def social_link(title, url, class_name)
    link_to(url, :title => title) do
      content_tag(:span, "", :aria => {:hidden => true}, :class => class_name) +
      content_tag(:span, title, :class => "screenreader")
    end
  end
end

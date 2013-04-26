module ApplicationHelper
  def navbar_list_item(text, path, opts={})
    return if opts[:hide]
    cls = request.fullpath == path ? 'active' : ''
    content_tag :li, :class => cls do
      link_to text, path, opts
    end
  end
end

module ApplicationHelper
  def navbar_list_item(text, path, opts={})
    return if opts[:hide]
    cls = request.fullpath == path ? 'active' : ''
    content_tag :li, :class => cls do
      link_to text, path, opts
    end
  end

  def flash_notice(_flash)
    class_map = { :alert => "error", :notice => "success" }
    _flash.map do |name, message|
      content_tag :div, class: "alert alert-#{class_map[name] || name}" do
        link_to('&times;'.html_safe, '#', class: 'close', data: { dismiss: 'alert' }) + message
      end
    end.join.html_safe
  end
end

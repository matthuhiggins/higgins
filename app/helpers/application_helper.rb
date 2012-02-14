module ApplicationHelper
  def title text
    content_for :title, text
  end

  def body &block
    html_options = {id: controller_id, class: action_name}
    content_tag(:body, html_options, &block)
  end

  def controller_id
    controller.class.name.gsub(/Controller/, '').split('::').map(&:underscore) * '_'
  end

  def focus dom_id
    content_tag :script, <<-eval
      $(function() {
        $('##{dom_id}').focus();
      });
    eval
  end
end

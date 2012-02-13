require 'redcarpet'

module MarkdownHelper
  def markdown(content)
    Redcarpet.new(content).to_html.html_safe
  end
end

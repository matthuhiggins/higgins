module MarkdownHelper
  def markdown(content)
    Redcarpet.new(content).to_html
  end
end

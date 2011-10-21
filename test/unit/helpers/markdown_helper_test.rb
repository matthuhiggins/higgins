require 'test_helper'

class MarkdownHelperTest < ActionView::TestCase
  test 'markdown' do
    text = markdown("###wtf\nbbq")

    assert text.html_safe?
    assert_equal "<h3>wtf</h3>\n\n<p>bbq</p>\n", text
  end
end

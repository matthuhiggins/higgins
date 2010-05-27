require 'test_helper'

class FuckerTest < ActiveSupport::TestCase
  def test_fuck
    app_id = '116529841715555'
    application_secret = 'ec57d3c4944735af66e2cab6d1db07fa'
    valid_cookie = '"access_token=116529841715555%7C2.mSEOwg5eHY3ObAWBYCPxDQ__.3600.1273737600-1029652102%7CsA9dwGsDti6zQY0tNvshelPt9T4.&expires=1273737600&secret=KUAg2ilfTOTSH6e0UmCYZA__&session_key=2.mSEOwg5eHY3ObAWBYCPxDQ__.3600.1273737600-1029652102&sig=4418c8c798481669fc4517c47d2f8102&uid=1029652102"'
    bad_cookie = '"access_token=116529841715555%7C2.mSEOwg5eHY3ObAWBYCPxDQ__.3600.1273737600-1029652102%7CsA9dwGsDti6zQY0tNvshelPt9T4.&expires=1273737600&secret=KUAg2ilfTOTSH6e0UmCYZA__&session_key=2.mSEOwg5eHY3ObAWBYCPxDQ__.3600.1273737600-1029652102&sig=poop&uid=1029652102"'

    assert_kind_of Hash, Facebook.parse_cookie({"fbs_#{app_id}" => valid_cookie}, app_id, application_secret)
    assert_nil Facebook.parse_cookie({"fbs_#{app_id}" => bad_cookie}, app_id, application_secret)
    assert_nil Facebook.parse_cookie({'fbs_poop' => valid_cookie}, app_id, application_secret)
  end
end
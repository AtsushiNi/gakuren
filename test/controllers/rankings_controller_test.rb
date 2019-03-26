require 'test_helper'

class RankingsControllerTest < ActionDispatch::IntegrationTest
  test "should get make" do
    get rankings_make_url
    assert_response :success
  end

end

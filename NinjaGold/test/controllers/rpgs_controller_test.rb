require 'test_helper'

class RpgsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get rpgs_index_url
    assert_response :success
  end

end

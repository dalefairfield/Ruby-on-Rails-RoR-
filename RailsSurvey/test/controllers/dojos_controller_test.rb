require 'test_helper'

class DojosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dojos_index_url
    assert_response :success
  end

  test "should get result" do
    get dojos_result_url
    assert_response :success
  end

end

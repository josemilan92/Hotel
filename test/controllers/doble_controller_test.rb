require 'test_helper'

class DobleControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get doble_index_url
    assert_response :success
  end

end

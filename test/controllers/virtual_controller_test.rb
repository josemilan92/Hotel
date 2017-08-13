require 'test_helper'

class VirtualControllerTest < ActionDispatch::IntegrationTest
  test "should get indext" do
    get virtual_index_url
    assert_response :success
  end

end

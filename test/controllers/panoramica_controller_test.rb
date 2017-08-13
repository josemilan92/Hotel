require 'test_helper'

class PanoramicaControllerTest < ActionDispatch::IntegrationTest
  test "should get indext" do
    get panoramica_index_url
    assert_response :success
  end

end

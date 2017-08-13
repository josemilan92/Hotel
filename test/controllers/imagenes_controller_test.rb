require 'test_helper'

class ImagenesControllerTest < ActionDispatch::IntegrationTest
  test "should get indext" do
    get imagenes_index_url
    assert_response :success
  end

end

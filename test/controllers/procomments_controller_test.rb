require 'test_helper'

class ProcommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @procomment = procomments(:one)
  end

  test "should get index" do
    get procomments_url
    assert_response :success
  end

  test "should get new" do
    get new_procomment_url
    assert_response :success
  end

  test "should create procomment" do
    assert_difference('Procomment.count') do
      post procomments_url, params: { procomment: {promotion_id: @procomment.promo_id, texto: @procomment.texto, user_id: @procomment.user_id } }
    end

    assert_redirected_to procomment_url(Procomment.last)
  end

  test "should show procomment" do
    get procomment_url(@procomment)
    assert_response :success
  end

  test "should get edit" do
    get edit_procomment_url(@procomment)
    assert_response :success
  end

  test "should update procomment" do
    patch procomment_url(@procomment), params: { procomment: {promotion_id: @procomment.promo_id, texto: @procomment.texto, user_id: @procomment.user_id } }
    assert_redirected_to procomment_url(@procomment)
  end

  test "should destroy procomment" do
    assert_difference('Procomment.count', -1) do
      delete procomment_url(@procomment)
    end

    assert_redirected_to procomments_url
  end
end

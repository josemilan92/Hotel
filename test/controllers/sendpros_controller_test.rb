require 'test_helper'

class SendprosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sendpro = sendpros(:one)
  end

  test "should get index" do
    get sendpros_url
    assert_response :success
  end

  test "should get new" do
    get new_sendpro_url
    assert_response :success
  end

  test "should create sendpro" do
    assert_difference('Sendpro.count') do
      post sendpros_url, params: { sendpro: { fechaPri: @sendpro.fechaPri, fechaUlt: @sendpro.fechaUlt, lugar: @sendpro.lugar, total: @sendpro.total, user_id: @sendpro.user_id } }
    end

    assert_redirected_to sendpro_url(Sendpro.last)
  end

  test "should show sendpro" do
    get sendpro_url(@sendpro)
    assert_response :success
  end

  test "should get edit" do
    get edit_sendpro_url(@sendpro)
    assert_response :success
  end

  test "should update sendpro" do
    patch sendpro_url(@sendpro), params: { sendpro: { fechaPri: @sendpro.fechaPri, fechaUlt: @sendpro.fechaUlt, lugar: @sendpro.lugar, total: @sendpro.total, user_id: @sendpro.user_id } }
    assert_redirected_to sendpro_url(@sendpro)
  end

  test "should destroy sendpro" do
    assert_difference('Sendpro.count', -1) do
      delete sendpro_url(@sendpro)
    end

    assert_redirected_to sendpros_url
  end
end

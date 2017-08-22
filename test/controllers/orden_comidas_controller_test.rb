require 'test_helper'

class OrdenComidasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @orden_comida = orden_comidas(:one)
  end

  test "should get index" do
    get orden_comidas_url
    assert_response :success
  end

  test "should get new" do
    get new_orden_comida_url
    assert_response :success
  end

  test "should create orden_comida" do
    assert_difference('OrdenComida.count') do
      post orden_comidas_url, params: { orden_comida: { product: @orden_comida.product, total: @orden_comida.total } }
    end

    assert_redirected_to orden_comida_url(OrdenComida.last)
  end

  test "should show orden_comida" do
    get orden_comida_url(@orden_comida)
    assert_response :success
  end

  test "should get edit" do
    get edit_orden_comida_url(@orden_comida)
    assert_response :success
  end

  test "should update orden_comida" do
    patch orden_comida_url(@orden_comida), params: { orden_comida: { product: @orden_comida.product, total: @orden_comida.total } }
    assert_redirected_to orden_comida_url(@orden_comida)
  end

  test "should destroy orden_comida" do
    assert_difference('OrdenComida.count', -1) do
      delete orden_comida_url(@orden_comida)
    end

    assert_redirected_to orden_comidas_url
  end
end

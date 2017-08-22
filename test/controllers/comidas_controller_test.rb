require 'test_helper'

class ComidasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comida = comidas(:one)
  end

  test "should get index" do
    get comidas_url
    assert_response :success
  end

  test "should get new" do
    get new_comida_url
    assert_response :success
  end

  test "should create comida" do
    assert_difference('Comida.count') do
      post comidas_url, params: { comida: { description: @comida.description, total: @comida.total } }
    end

    assert_redirected_to comida_url(Comida.last)
  end

  test "should show comida" do
    get comida_url(@comida)
    assert_response :success
  end

  test "should get edit" do
    get edit_comida_url(@comida)
    assert_response :success
  end

  test "should update comida" do
    patch comida_url(@comida), params: { comida: { description: @comida.description, total: @comida.total } }
    assert_redirected_to comida_url(@comida)
  end

  test "should destroy comida" do
    assert_difference('Comida.count', -1) do
      delete comida_url(@comida)
    end

    assert_redirected_to comidas_url
  end
end

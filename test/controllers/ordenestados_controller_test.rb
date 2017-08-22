require 'test_helper'

class OrdenestadosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ordenestado = ordenestados(:one)
  end

  test "should get index" do
    get ordenestados_url
    assert_response :success
  end

  test "should get new" do
    get new_ordenestado_url
    assert_response :success
  end

  test "should create ordenestado" do
    assert_difference('Ordenestado.count') do
      post ordenestados_url, params: { ordenestado: { nombre: @ordenestado.nombre } }
    end

    assert_redirected_to ordenestado_url(Ordenestado.last)
  end

  test "should show ordenestado" do
    get ordenestado_url(@ordenestado)
    assert_response :success
  end

  test "should get edit" do
    get edit_ordenestado_url(@ordenestado)
    assert_response :success
  end

  test "should update ordenestado" do
    patch ordenestado_url(@ordenestado), params: { ordenestado: { nombre: @ordenestado.nombre } }
    assert_redirected_to ordenestado_url(@ordenestado)
  end

  test "should destroy ordenestado" do
    assert_difference('Ordenestado.count', -1) do
      delete ordenestado_url(@ordenestado)
    end

    assert_redirected_to ordenestados_url
  end
end

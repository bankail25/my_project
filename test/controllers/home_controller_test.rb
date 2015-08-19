require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get nosotros" do
    get :nosotros
    assert_response :success
  end

  test "should get servicios" do
    get :servicios
    assert_response :success
  end

  test "should get productos" do
    get :productos
    assert_response :success
  end

  test "should get promociones" do
    get :promociones
    assert_response :success
  end

  test "should get contacto" do
    get :contacto
    assert_response :success
  end

  test "should get fabricacion" do
    get :fabricacion
    assert_response :success
  end

end

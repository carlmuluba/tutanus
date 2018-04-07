require 'test_helper'

class ProductorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @productor = productors(:one)
  end

  test "should get index" do
    get productors_url
    assert_response :success
  end

  test "should get new" do
    get new_productor_url
    assert_response :success
  end

  test "should create productor" do
    assert_difference('Productor.count') do
      post productors_url, params: { productor: {  } }
    end

    assert_redirected_to productor_url(Productor.last)
  end

  test "should show productor" do
    get productor_url(@productor)
    assert_response :success
  end

  test "should get edit" do
    get edit_productor_url(@productor)
    assert_response :success
  end

  test "should update productor" do
    patch productor_url(@productor), params: { productor: {  } }
    assert_redirected_to productor_url(@productor)
  end

  test "should destroy productor" do
    assert_difference('Productor.count', -1) do
      delete productor_url(@productor)
    end

    assert_redirected_to productors_url
  end
end

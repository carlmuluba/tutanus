require 'test_helper'

class MultiplePicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @multiple_pic = multiple_pics(:one)
  end

  test "should get index" do
    get multiple_pics_url
    assert_response :success
  end

  test "should get new" do
    get new_multiple_pic_url
    assert_response :success
  end

  test "should create multiple_pic" do
    assert_difference('MultiplePic.count') do
      post multiple_pics_url, params: { multiple_pic: { activity_id: @multiple_pic.activity_id, image: @multiple_pic.image, productor_id: @multiple_pic.productor_id, project_id: @multiple_pic.project_id } }
    end

    assert_redirected_to multiple_pic_url(MultiplePic.last)
  end

  test "should show multiple_pic" do
    get multiple_pic_url(@multiple_pic)
    assert_response :success
  end

  test "should get edit" do
    get edit_multiple_pic_url(@multiple_pic)
    assert_response :success
  end

  test "should update multiple_pic" do
    patch multiple_pic_url(@multiple_pic), params: { multiple_pic: { activity_id: @multiple_pic.activity_id, image: @multiple_pic.image, productor_id: @multiple_pic.productor_id, project_id: @multiple_pic.project_id } }
    assert_redirected_to multiple_pic_url(@multiple_pic)
  end

  test "should destroy multiple_pic" do
    assert_difference('MultiplePic.count', -1) do
      delete multiple_pic_url(@multiple_pic)
    end

    assert_redirected_to multiple_pics_url
  end
end

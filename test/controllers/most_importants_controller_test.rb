require 'test_helper'

class MostImportantsControllerTest < ActionController::TestCase
  setup do
    @most_important = most_importants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:most_importants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create most_important" do
    assert_difference('MostImportant.count') do
      post :create, most_important: {  }
    end

    assert_redirected_to most_important_path(assigns(:most_important))
  end

  test "should show most_important" do
    get :show, id: @most_important
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @most_important
    assert_response :success
  end

  test "should update most_important" do
    patch :update, id: @most_important, most_important: {  }
    assert_redirected_to most_important_path(assigns(:most_important))
  end

  test "should destroy most_important" do
    assert_difference('MostImportant.count', -1) do
      delete :destroy, id: @most_important
    end

    assert_redirected_to most_importants_path
  end
end

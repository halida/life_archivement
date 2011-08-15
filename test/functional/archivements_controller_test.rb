require 'test_helper'

class ArchivementsControllerTest < ActionController::TestCase
  setup do
    @archivement = archivements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:archivements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create archivement" do
    assert_difference('Archivement.count') do
      post :create, archivement: @archivement.attributes
    end

    assert_redirected_to archivement_path(assigns(:archivement))
  end

  test "should show archivement" do
    get :show, id: @archivement.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @archivement.to_param
    assert_response :success
  end

  test "should update archivement" do
    put :update, id: @archivement.to_param, archivement: @archivement.attributes
    assert_redirected_to archivement_path(assigns(:archivement))
  end

  test "should destroy archivement" do
    assert_difference('Archivement.count', -1) do
      delete :destroy, id: @archivement.to_param
    end

    assert_redirected_to archivements_path
  end
end

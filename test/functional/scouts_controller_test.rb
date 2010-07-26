require 'test_helper'

class ScoutsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:scouts)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_scout
    assert_difference('Scout.count') do
      post :create, :scout => { }
    end

    assert_redirected_to scout_path(assigns(:scout))
  end

  def test_should_show_scout
    get :show, :id => scouts(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => scouts(:one).id
    assert_response :success
  end

  def test_should_update_scout
    put :update, :id => scouts(:one).id, :scout => { }
    assert_redirected_to scout_path(assigns(:scout))
  end

  def test_should_destroy_scout
    assert_difference('Scout.count', -1) do
      delete :destroy, :id => scouts(:one).id
    end

    assert_redirected_to scouts_path
  end
end

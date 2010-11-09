require 'test_helper'

class FootnotesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:footnotes)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_footnote
    assert_difference('Footnote.count') do
      post :create, :footnote => { }
    end

    assert_redirected_to footnote_path(assigns(:footnote))
  end

  def test_should_show_footnote
    get :show, :id => footnotes(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => footnotes(:one).id
    assert_response :success
  end

  def test_should_update_footnote
    put :update, :id => footnotes(:one).id, :footnote => { }
    assert_redirected_to footnote_path(assigns(:footnote))
  end

  def test_should_destroy_footnote
    assert_difference('Footnote.count', -1) do
      delete :destroy, :id => footnotes(:one).id
    end

    assert_redirected_to footnotes_path
  end
end

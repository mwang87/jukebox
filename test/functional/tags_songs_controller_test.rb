require 'test_helper'

class TagsSongsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:tags_songs)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_tags_songs
    assert_difference('TagsSongs.count') do
      post :create, :tags_songs => { }
    end

    assert_redirected_to tags_songs_path(assigns(:tags_songs))
  end

  def test_should_show_tags_songs
    get :show, :id => tags_songs(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => tags_songs(:one).id
    assert_response :success
  end

  def test_should_update_tags_songs
    put :update, :id => tags_songs(:one).id, :tags_songs => { }
    assert_redirected_to tags_songs_path(assigns(:tags_songs))
  end

  def test_should_destroy_tags_songs
    assert_difference('TagsSongs.count', -1) do
      delete :destroy, :id => tags_songs(:one).id
    end

    assert_redirected_to tags_songs_path
  end
end

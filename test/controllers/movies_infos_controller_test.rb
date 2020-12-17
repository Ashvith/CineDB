require 'test_helper'

class MoviesInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movies_info = movies_infos(:one)
  end

  test "should get index" do
    get movies_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_movies_info_url
    assert_response :success
  end

  test "should create movies_info" do
    assert_difference('MoviesInfo.count') do
      post movies_infos_url, params: { movies_info: { cast: @movies_info.cast, crew: @movies_info.crew, movie_id: @movies_info.movie_id, title: @movies_info.title } }
    end

    assert_redirected_to movies_info_url(MoviesInfo.last)
  end

  test "should show movies_info" do
    get movies_info_url(@movies_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_movies_info_url(@movies_info)
    assert_response :success
  end

  test "should update movies_info" do
    patch movies_info_url(@movies_info), params: { movies_info: { cast: @movies_info.cast, crew: @movies_info.crew, movie_id: @movies_info.movie_id, title: @movies_info.title } }
    assert_redirected_to movies_info_url(@movies_info)
  end

  test "should destroy movies_info" do
    assert_difference('MoviesInfo.count', -1) do
      delete movies_info_url(@movies_info)
    end

    assert_redirected_to movies_infos_url
  end
end

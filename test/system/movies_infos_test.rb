require "application_system_test_case"

class MoviesInfosTest < ApplicationSystemTestCase
  setup do
    @movies_info = movies_infos(:one)
  end

  test "visiting the index" do
    visit movies_infos_url
    assert_selector "h1", text: "Movies Infos"
  end

  test "creating a Movies info" do
    visit movies_infos_url
    click_on "New Movies Info"

    fill_in "Cast", with: @movies_info.cast
    fill_in "Crew", with: @movies_info.crew
    fill_in "Movie", with: @movies_info.movie_id
    fill_in "Title", with: @movies_info.title
    click_on "Create Movies info"

    assert_text "Movies info was successfully created"
    click_on "Back"
  end

  test "updating a Movies info" do
    visit movies_infos_url
    click_on "Edit", match: :first

    fill_in "Cast", with: @movies_info.cast
    fill_in "Crew", with: @movies_info.crew
    fill_in "Movie", with: @movies_info.movie_id
    fill_in "Title", with: @movies_info.title
    click_on "Update Movies info"

    assert_text "Movies info was successfully updated"
    click_on "Back"
  end

  test "destroying a Movies info" do
    visit movies_infos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Movies info was successfully destroyed"
  end
end

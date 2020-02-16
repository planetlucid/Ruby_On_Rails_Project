require 'test_helper'

class ComicbooksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get comicbooks_index_url
    assert_response :success
  end

  test "should get create" do
    get comicbooks_create_url
    assert_response :success
  end

  test "should get new" do
    get comicbooks_new_url
    assert_response :success
  end

  test "should get edit" do
    get comicbooks_edit_url
    assert_response :success
  end

  test "should get update" do
    get comicbooks_update_url
    assert_response :success
  end

end

require 'test_helper'

class SquadsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get squads_index_url
    assert_response :success
  end

end

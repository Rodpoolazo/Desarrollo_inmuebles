require 'test_helper'

class RealtysControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get realties_index_url
    assert_response :success
  end

end

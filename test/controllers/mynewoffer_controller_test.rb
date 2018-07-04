require 'test_helper'

class MynewofferControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mynewoffer_index_url
    assert_response :success
  end

end

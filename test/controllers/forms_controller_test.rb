require 'test_helper'

class FormsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get forms_index_url
    assert_response :success
  end

  test "should get new" do
    get forms_new_url
    assert_response :success
  end

  test "should get create" do
    get forms_create_url
    assert_response :success
  end

end

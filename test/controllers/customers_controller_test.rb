require 'test_helper'

class CustomersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get afrekenen_url
    assert_response :success
  end

  test "should get create" do
    get afrekenen_url
    assert_response :success
  end

end

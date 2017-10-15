require 'test_helper'

class DoubleMattressOnesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @double_mattress_one = double_mattress_ones(:one)
  end

  test "should get index" do
    get double_mattress_ones_url
    assert_response :success
  end

  test "should get new" do
    get new_double_mattress_one_url
    assert_response :success
  end

  test "should create double_mattress_one" do
    assert_difference('DoubleMattressOne.count') do
      post double_mattress_ones_url, params: { double_mattress_one: { age: @double_mattress_one.age, body_shape: @double_mattress_one.body_shape, category: @double_mattress_one.category, comfort: @double_mattress_one.comfort, diseases: @double_mattress_one.diseases, email: @double_mattress_one.email, gender: @double_mattress_one.gender, length: @double_mattress_one.length, mattress_length: @double_mattress_one.mattress_length, mattress_width: @double_mattress_one.mattress_width, name: @double_mattress_one.name, neck_or_back_pain: @double_mattress_one.neck_or_back_pain, session_id: @double_mattress_one.session_id, sleep_position: @double_mattress_one.sleep_position, warm_sleeping: @double_mattress_one.warm_sleeping, weight: @double_mattress_one.weight } }
    end

    assert_redirected_to double_mattress_one_url(DoubleMattressOne.last)
  end

  test "should show double_mattress_one" do
    get double_mattress_one_url(@double_mattress_one)
    assert_response :success
  end

  test "should get edit" do
    get edit_double_mattress_one_url(@double_mattress_one)
    assert_response :success
  end

  test "should update double_mattress_one" do
    patch double_mattress_one_url(@double_mattress_one), params: { double_mattress_one: { age: @double_mattress_one.age, body_shape: @double_mattress_one.body_shape, category: @double_mattress_one.category, comfort: @double_mattress_one.comfort, diseases: @double_mattress_one.diseases, email: @double_mattress_one.email, gender: @double_mattress_one.gender, length: @double_mattress_one.length, mattress_length: @double_mattress_one.mattress_length, mattress_width: @double_mattress_one.mattress_width, name: @double_mattress_one.name, neck_or_back_pain: @double_mattress_one.neck_or_back_pain, session_id: @double_mattress_one.session_id, sleep_position: @double_mattress_one.sleep_position, warm_sleeping: @double_mattress_one.warm_sleeping, weight: @double_mattress_one.weight } }
    assert_redirected_to double_mattress_one_url(@double_mattress_one)
  end

  test "should destroy double_mattress_one" do
    assert_difference('DoubleMattressOne.count', -1) do
      delete double_mattress_one_url(@double_mattress_one)
    end

    assert_redirected_to double_mattress_ones_url
  end
end

require 'test_helper'

class DoubleMattressTwosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @double_mattress_two = double_mattress_twos(:one)
  end

  test "should get index" do
    get double_mattress_twos_url
    assert_response :success
  end

  test "should get new" do
    get new_double_mattress_two_url
    assert_response :success
  end

  test "should create double_mattress_two" do
    assert_difference('DoubleMattressTwo.count') do
      post double_mattress_twos_url, params: { double_mattress_two: { age2: @double_mattress_two.age2, age: @double_mattress_two.age, body_shape2: @double_mattress_two.body_shape2, body_shape: @double_mattress_two.body_shape, category: @double_mattress_two.category, comfort2: @double_mattress_two.comfort2, comfort: @double_mattress_two.comfort, diseases2: @double_mattress_two.diseases2, diseases: @double_mattress_two.diseases, email: @double_mattress_two.email, gender2: @double_mattress_two.gender2, gender: @double_mattress_two.gender, length2: @double_mattress_two.length2, length: @double_mattress_two.length, mattress_length: @double_mattress_two.mattress_length, mattress_width: @double_mattress_two.mattress_width, name2: @double_mattress_two.name2, name: @double_mattress_two.name, neck_or_back_pain2: @double_mattress_two.neck_or_back_pain2, neck_or_back_pain: @double_mattress_two.neck_or_back_pain, session_id: @double_mattress_two.session_id, sleep_position2: @double_mattress_two.sleep_position2, sleep_position: @double_mattress_two.sleep_position, warm_sleeping2: @double_mattress_two.warm_sleeping2, warm_sleeping: @double_mattress_two.warm_sleeping, weight2: @double_mattress_two.weight2, weight: @double_mattress_two.weight } }
    end

    assert_redirected_to double_mattress_two_url(DoubleMattressTwo.last)
  end

  test "should show double_mattress_two" do
    get double_mattress_two_url(@double_mattress_two)
    assert_response :success
  end

  test "should get edit" do
    get edit_double_mattress_two_url(@double_mattress_two)
    assert_response :success
  end

  test "should update double_mattress_two" do
    patch double_mattress_two_url(@double_mattress_two), params: { double_mattress_two: { age2: @double_mattress_two.age2, age: @double_mattress_two.age, body_shape2: @double_mattress_two.body_shape2, body_shape: @double_mattress_two.body_shape, category: @double_mattress_two.category, comfort2: @double_mattress_two.comfort2, comfort: @double_mattress_two.comfort, diseases2: @double_mattress_two.diseases2, diseases: @double_mattress_two.diseases, email: @double_mattress_two.email, gender2: @double_mattress_two.gender2, gender: @double_mattress_two.gender, length2: @double_mattress_two.length2, length: @double_mattress_two.length, mattress_length: @double_mattress_two.mattress_length, mattress_width: @double_mattress_two.mattress_width, name2: @double_mattress_two.name2, name: @double_mattress_two.name, neck_or_back_pain2: @double_mattress_two.neck_or_back_pain2, neck_or_back_pain: @double_mattress_two.neck_or_back_pain, session_id: @double_mattress_two.session_id, sleep_position2: @double_mattress_two.sleep_position2, sleep_position: @double_mattress_two.sleep_position, warm_sleeping2: @double_mattress_two.warm_sleeping2, warm_sleeping: @double_mattress_two.warm_sleeping, weight2: @double_mattress_two.weight2, weight: @double_mattress_two.weight } }
    assert_redirected_to double_mattress_two_url(@double_mattress_two)
  end

  test "should destroy double_mattress_two" do
    assert_difference('DoubleMattressTwo.count', -1) do
      delete double_mattress_two_url(@double_mattress_two)
    end

    assert_redirected_to double_mattress_twos_url
  end
end

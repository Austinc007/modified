require 'test_helper'

class SaloonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @saloon = saloons(:one)
  end

  test "should get index" do
    get saloons_url
    assert_response :success
  end

  test "should get new" do
    get new_saloon_url
    assert_response :success
  end

  test "should create saloon" do
    assert_difference('Saloon.count') do
      post saloons_url, params: { saloon: { address: @saloon.address, closing_time: @saloon.closing_time, contact: @saloon.contact, name: @saloon.name, opening_time: @saloon.opening_time, services: @saloon.services } }
    end

    assert_redirected_to saloon_url(Saloon.last)
  end

  test "should show saloon" do
    get saloon_url(@saloon)
    assert_response :success
  end

  test "should get edit" do
    get edit_saloon_url(@saloon)
    assert_response :success
  end

  test "should update saloon" do
    patch saloon_url(@saloon), params: { saloon: { address: @saloon.address, closing_time: @saloon.closing_time, contact: @saloon.contact, name: @saloon.name, opening_time: @saloon.opening_time, services: @saloon.services } }
    assert_redirected_to saloon_url(@saloon)
  end

  test "should destroy saloon" do
    assert_difference('Saloon.count', -1) do
      delete saloon_url(@saloon)
    end

    assert_redirected_to saloons_url
  end
end

require 'test_helper'

class BillsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
    @user.save
    @bill = Bill.new(place: "place", value: "1.5", date: Time.now.to_datetime, user_id: @user.id)
    @bill.save
  end

  test "should get index" do
    get bills_url
    assert_response :success
  end

  test "should get new" do
    get new_bill_url
    assert_response :success
  end

  test "should create bill" do
    assert_difference('Bill.count') do
      post bills_url, params: { bill: { date: @bill.date, place: @bill.place, user_id: @bill.user_id, value: @bill.value } }
    end

    assert_redirected_to bill_url(Bill.last)
  end

  test "should show bill" do
    get bill_url(@bill)
    assert_response :success
  end

  test "should get edit" do
    get edit_bill_url(@bill)
    assert_response :success
  end

  test "should update bill" do
    patch bill_url(@bill), params: { bill: { date: @bill.date, place: @bill.place, user_id: @bill.user_id, value: @bill.value } }
    assert_redirected_to bill_url(@bill)
  end

  test "should destroy bill" do
    assert_difference('Bill.count', -1) do
      delete bill_url(@bill)
    end

    assert_redirected_to bills_url
  end
end

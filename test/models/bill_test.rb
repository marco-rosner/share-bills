require 'test_helper'

class BillTest < ActiveSupport::TestCase
  
  def setup
    @user = users(:one)
    @user.save
  	@bill = Bill.new(place: "place", value: "1.5", date: Time.now.to_datetime, user_id: @user.id)
    @bill.save
  end

  def teardown
    @user = nil
  	@bill =  nil
  end

  test "should be valid" do
  	assert @bill.valid?  	
  end

  test "place should be present" do
  	@bill.place = ""
  	assert_not @bill.valid?
  end

  test "value should be present" do
  	@bill.value = ""
  	assert_not @bill.valid?
  end
end

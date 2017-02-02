require 'test_helper'

class AccountTest < ActiveSupport::TestCase

  def setup
    @user = users(:one)
    @user.save
  	@account = Account.new(bank: "Bank", agency: 1723, number: 635371, user_id: @user.id)
    @account.save
  end

  def teardown
    @user = nil
  	@account = nil
  end

  test "should be valid" do
  	assert @account.valid?  	
  end

  test "bank should be present" do
  	@account.bank = ""
  	assert_not @account.valid?
  end

  test "agency should be present" do
  	@account.agency = ""
  	assert_not @account.valid?
  end

  test "number should be present" do
  	@account.number = ""
  	assert_not @account.valid?
  end
end

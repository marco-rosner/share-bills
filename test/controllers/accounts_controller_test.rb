require 'test_helper'

class AccountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
    @user.save
    @account = Account.new(bank: "Bank", agency: 1723, number: 635371, user_id: @user.id)
    @account.save
  end

  test "should get index" do
    get accounts_url
    assert_response :success
  end

  test "should get new" do
    get new_account_url
    assert_response :success
  end

  test "should create account" do
    assert_difference('Account.count') do
      post accounts_url, params: { account: { agency: @account.agency, bank: @account.bank, number: @account.number, user_id: @account.user_id } }
    end

    assert_redirected_to account_url(Account.last)
  end

  test "should show account" do
    get account_url(@account)
    assert_response :success
  end

  test "should get edit" do
    get edit_account_url(@account)
    assert_response :success
  end

  test "should update account" do
    patch account_url(@account), params: { account: { agency: @account.agency, bank: @account.bank, number: @account.number, user_id: @account.user_id } }
    assert_redirected_to account_url(@account)
  end

  test "should destroy account" do
    assert_difference('Account.count', -1) do
      delete account_url(@account)
    end

    assert_redirected_to accounts_url
  end
end

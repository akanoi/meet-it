require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new(name: "user", email: "user@profitero.com")
  end

  test "name should be present" do
    @user.name = "     "
    assert_not @user.valid?
  end

  test "email should be present" do
    @user.email = "     "
    assert_not @user.valid?
  end

  test "name should not be too long" do
    @user.name = "a" * 51
    assert_not @user.valid?
  end

  test "email should not be too long" do
    @user.email = "a" * 244 + "@profitero.com"
    assert_not @user.valid?
  end

  test "email should be only profitero domain" do
    @user.email = "user@example.com"
    assert_not @user.valid?
  end
end

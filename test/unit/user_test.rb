require 'test_helper'

class UserTest < ActiveSupport::TestCase
	test "user must have a name" do
		user = FactoryGirl.build(:user)
		user.name = nil
		# assert user.valid?
		refute user.valid?, "heyyyy"
	end

	test "user must have an email" do
      user = FactoryGirl.build(:user)
      user.email = nil
      refute user.valid?, "work"
  end

end


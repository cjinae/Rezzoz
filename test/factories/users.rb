FactoryGirl.define do
  factory :user do
    name "Michael"
    sequence(:email) {|n| "user_#{n}@gmail.com"}
  	# password "test"
   #  password_confirmation "test"
  end
end
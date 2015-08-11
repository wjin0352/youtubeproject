FactoryGirl.define do
  factory :user do
    firstname "jane"
	lastname "dough"
	username "jane"
	sequence(:email) { |n| "test#{n}@example.com" }
	description "some descriptive stuff!"
	password "abcd12345"
  end

end

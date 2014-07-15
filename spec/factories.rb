FactoryGirl.define do
  factory :user do
    sequence(:first_name) { |n| "Person #{n}" }
    sequence(:last_name) { |n| "Last #{n}" }
    sequence(:email) { |n| "person_#{n}@example.com"}
    password "abc123"
    password_confirmation "abc123"

    factory :admin do
      admin true
    end
  end
end
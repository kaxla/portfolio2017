FactoryGirl.define do
  factory :user do
    email "MyString"
    password_digest "MyString"
  end
  factory :project do
    title "The first project"
    description "It's a project and it's first"
  end
end

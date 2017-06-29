FactoryGirl.define do
  factory :user do
    email "kaylas.email.address@gmail.com"
    password "password"
  end
  factory :project do
    title "The first project"
    description "It's a project and it's first"
  end
end

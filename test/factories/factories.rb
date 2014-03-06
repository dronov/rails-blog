FactoryGirl.define do
  factory :post do
    title { generate :string }
    text  { generate :string }
  end

  factory :comment do
    commenter { generate :string }
    body { generate :string }
    post
  end

  factory :user do
    username {generate :string}
    password {generate :string}
    password_confirmation { password }
  end

end

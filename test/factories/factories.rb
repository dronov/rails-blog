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

end

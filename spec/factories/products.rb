FactoryBot.define do
  factory :product do
    name { "MyString" }
    category { "MyString" }
    ndc { "MyString" }
    qty { 1 }
    price { 1 }
    instructions { "MyString" }
  end
end

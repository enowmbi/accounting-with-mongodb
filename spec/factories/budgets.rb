FactoryBot.define do
  factory :budget do
    account { nil }
    amount { "9.99" }
    currency { "MyString" }
  end
end

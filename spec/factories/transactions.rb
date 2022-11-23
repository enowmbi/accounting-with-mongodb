FactoryBot.define do
  factory :transaction do
    date { "2022-11-22" }
    memo { "MyString" }
    ref { "MyString" }
    balanced { false }
  end
end

FactoryBot.define do
  factory :comment do
    author { "mike" }
    sequence(:body) { |n| "vazovski #{n}" }
  end
end
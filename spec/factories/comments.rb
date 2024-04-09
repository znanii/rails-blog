FactoryBot.define do
  factory :comment do
    author { "mike" }
    sequence(:body) { |n| "Lorem ipsum dolor sit amet orci aliquam #{n}" }
  end
end
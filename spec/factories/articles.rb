FactoryBot.define do
  factory :article do
    title { "Start summarizing. If you find there’s nothing else you can cut but that you’re still over the 140 character limit, that’s when you start summarizing" }
    text {"Article text" }


#create factory with the name article_with_comments
# to create an article with several comments
    factory :article_with_comments do
      after :create do |article, evaluator|
        #create list with 3 comments
        create_list :comment, 3, article: article
      end  
    end
  end
end
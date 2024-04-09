FactoryBot.define do
  factory :article do
    title { "Start summarizing. If you find there’s nothing else you can cut but that you’re still over the 140 character limit, that’s when you start summarizing" }
    text {"Like any other social media site Facebook has length requirements when it comes to writing on the wall, providing status, messaging and commenting. Understanding how many characters you can use, enables you to more effectively use Facebook as a business or campaign tool.

Private messaging via Facebook Messenger is one of the main ways that people interact on Facebook. This type of direct messaging can be either an instant message, or a regular email-type message. For both instant and regular messaging, there is a 20,000 character limit.

A Facebook status may have character limits, but considering that it is at 63,206 characters, unless you are writing War and Peace, you should be fine. Facebook has raised this number 12 times to accommodate user’s status and feedback.

Facebook wall posts have a 63,206 character limit same with status, but truncation begins at 477 characters. This enables someone to write a thoughtful response or create something similar to a blog.

An area which is rarely used in Facebook." }


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
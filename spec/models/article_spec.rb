require "rails_helper"

describe Article, type: :model do 
  describe "validations" do
  it { should validate_presence_of(:title) } #{..} == do .. end
  it { should validate_presence_of(:text) }  
  it { should validate_length_of(:title).is_at_least(140) }
  end

  describe "assosiations" do
  it { should have_many(:comments) }
  end

  describe "#subject" do
    it "returns the article title" do
      #create article sneaky way
      article = create(:article, title: 'Start summarizing. If you find there’s nothing else you can cut but that you’re still over the 140 character limit, that’s when you start summarizing') 

      # assert - checking
      expect(article.subject).to eq 'Start summarizing. If you find there’s nothing else you can cut but that you’re still over the 140 character limit, that’s when you start summarizing' 
    end
  end

  describe "#last_comment" do
    it "returns last comment" do
      #create article WITH comments
      article = create(:article_with_comments)

      expect(article.last_comment.body).to eq 'vazovski 3'
    end
  end
end
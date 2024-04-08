require "rails_helper"

describe Article, type: :model do 
  describe "validations" do
  it { should validate_presence_of(:title) } #{..} == do .. end
  it { should validate_presence_of(:text) }  
  end

  describe "assosiations" do
  it { should have_many(:comments) }
  end

  describe "#subject" do
    it "returns the article title" do
      #create article sneaky way
      article = create(:article, title: 'Lorem Ipsum') 

      # assert - checking
      expect(article.subject).to eq 'Lorem Ipsum' 
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
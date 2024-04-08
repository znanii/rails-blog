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
end
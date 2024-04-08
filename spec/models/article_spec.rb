require "rails_helper"

describe Article, type: :model do 
  describe "validations" do
  it { should validate_presence_of(:title) } #{..} == do .. end
  it { should validate_presence_of(:text) }  
  end

  describe "assosiations" do
  it { should have_many(:comments) }
  end
  
end
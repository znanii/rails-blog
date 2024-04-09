require "rails_helper"

describe Comment, type: :model do 
  it { should belong_to(:article) }

  it {should validate_length_of(:body).is_at_least(40)}

end
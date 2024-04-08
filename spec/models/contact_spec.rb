require "rails_helper"

describe Contact, type: :model do 
  it { should validate_presence_of(:email) } #{..} == do .. end
  it { should validate_presence_of(:message) }
end
require "rails_helper"

feature "Comment Creation" do 
  before(:each) do
      sign_up
  end

  scenario "allows user to see comments and form for comments" do
  visit '/articles/1'
  expect(page).to have_content 'Add comments'
  end

=begin
  scenario "allows user to post comment" do
    visit '/articles/1'
    fill_in :comment_body, :with => "Lorem ipsum dolor sit amet orci aliquam"
    
    click_button "Create Comment"

    expect(page).to have_content 'user said'
  end
=end
end


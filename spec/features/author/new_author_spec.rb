require 'rails_helper'

describe "New author page", type: :feature do

 it "should render withour error" do
   visit new_author_path
 end

 it "should have text inputs for an author's first name, last name, and homepage" do
   visit new_author_path

   # these are the standard names given to inputs by the form builder
   expect(page).to have_field('author[first_name]')
   expect(page).to have_field('author[last_name]')
   expect(page).to have_field('author[homepage]')
 end

  it "should render error field when invalid instance is created" do
    visit new_author_path
    fill_in "author[first_name]", with: 'Example User'
    fill_in "author[last_name]", with: ''
    fill_in "author[homepage]", with: 'Example User.de'
    find('input[name="commit"]').click
    expect(page).to have_text("error")
  end
end
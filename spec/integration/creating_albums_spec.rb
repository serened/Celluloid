require 'spec_helper'

feature 'Creating albums' do
  before do
    user = Factory(:user, :email => "celluloid@example.com")
    user.confirm!

    visit '/'
    click_link "Add Album"
    message = "You need to sign in or sign up before continuing."
    page.should have_content(message)

    fill_in "Email", :with => "celluloid@example.com"
    fill_in "Password", :with => "password"
    click_button "Sign in"
    within("h2") { page.should have_content("Add Album") }
  end

  scenario "can create an album" do
    fill_in 'Title', :with => 'License to Ill'
    fill_in 'Artist', :with => 'Beastie Boys'
    fill_in 'Year', :with => 1994
    click_button 'Create Album'
    page.should have_content('Album has been created.')
    album = Album.find_by_title('License to Ill')
    page.current_url.should == album_url(album)
    within("#album #author") do
      page.should have_content("Created by celluloid@example.com")
    end
  end

  scenario "can not create an album without a name" do
    click_button "Create Album"
    page.should have_content("Album has not been created.")
    page.should have_content("Title can't be blank")
  end

  scenario "can not create an album without an artist" do
    fill_in 'Title', :with => 'Ill Communication'
    click_button "Create Album"
    page.should have_content("Album has not been created.")
    page.should have_content("Artist can't be blank")
  end

end

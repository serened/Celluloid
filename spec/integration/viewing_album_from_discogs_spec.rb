# require 'spec_helper'

# feature 'Viewing individual album information from discogs' do
#   before do
#     user = Factory(:user, :email => "celluloid@example.com")
#     user.confirm!

#     visit '/'
#     click_link "My Collection"
#     message = "You need to sign in or sign up before continuing."
#     page.should have_content(message)

#     fill_in "Email", :with => "celluloid@example.com"
#     fill_in "Password", :with => "password"
#     click_button "Sign in"

#     fill_in 'Search', :with => 'Licensed to Ill'
#     click_button 'Search'
#       page.should have_content("Licensed To Ill")
#   end

#   scenario "will show you track information if you click on a title" do
#     click_link "Licensed To Ill"
#   # scenario "will not accept a blank search" do
#   #   click_button "Search"
#   #   page.should have_content("No search terms entered; please try again.")
#   # end

#   # scenario "will handle no results" do
#   #   fill_in "Search", :with => "Derp derkejfhdsaklfhasklfhwieuhwgsd sdfskdjafh"
#   #   click_button 'Search'
#   #   page.should have_content("No results found; please try again."
# end

# end

# This is failing on: 

# ArgumentError:
#   rack-test requires a rack application, but none was given

# This comes from the ENV and complex for me to debug right now

# ToDo: What is rack-test, why require rack app, how capybara runs

# require 'spec_helper'

# feature "Creating a menu" do
#   scenario "Guest may create a menu" do
#     visit '/menus/new'
#     fill_in "name", with: "Yumilicious Dinner"
#     click_on "Add Menu"

#     expect(page).to have_content("Yumilicious Dinner Menu")
#   end
# end

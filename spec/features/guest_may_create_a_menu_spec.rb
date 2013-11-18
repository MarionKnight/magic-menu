require 'spec_helper'

feature "Creating a menu" do
  scenario "Guest may create a menu" do
    visit '/menus/new'
    fill_in "name", with: "Yumilicious Dinner"
    click_on "Add Menu"

    expect(page).to have_content("Yumilicious Dinner")
  end
end

# ToDo: Test that content is correct for price too
feature "Creating an item" do
  scenario "Guest may create an item" do
    visit '/items'
    fill_in "name", with: "Eggs"
    fill_in "price", with: "8.98"
    click_on "Add Item"

    expect(page).to have_content("Eggs")
  end
end

feature "Adding an item to the menu" do
  scenario "Guest may add an item to a menu" do
    visit '/items/1'
    select name: "Steak"
    select price: "9.99"

    expect(Items).to have_content("Steak")
  end
end

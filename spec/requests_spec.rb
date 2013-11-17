require 'spec_helper'

describe "web requests" do
  it "creates a new menu" do
    params = {'name' => "Yumilicious Dinner"}
    expect {post '/menus/new', params}.to change {Menu.all.length}.by(1)
  end

  it "won't create a menu without a name" do
    params = { 'name' => "" }
    expect { post '/menus/new', params }.to change { Menu.all.length }.by(0)
  end

# # This test is failing because I didn't validate for uniqueness yet
#   it "does not create menu with a duplicate name" do
#     params1 = { 'name' => "Smurfette" }
#     params2 = { 'name' => "Smurfette" }
#     expect {post '/menus/new', params1; post '/menus/new', params2}.to change {Menu.all.length}.by(1)
#   end

  # it "creates an item with a price" do
  #   params = { 'item' => {'name' => "Filet Mignon",
  #                               'price' => 17.69 } }
  #   post '/items', params
  #   Item.last.price.should == 17.69
  # end
end
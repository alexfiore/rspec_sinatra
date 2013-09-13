require 'spec_helper'
describe "Menu Items Controller" do
  context "show menu item" do
    it "displays the name" do
      get "/menu_items/#{menu_item.id}"
      expect(last_response.body).to include(menu_item.name)
    end
    it "displays the description"
    it "displays the price"
    it "displays the menu name it belongs to"
  end

  context "create menu item" do
    it "creates a menu with valid attributes"
    it "doesn't create a menu with invalid attributes"
    it "shows errors saving the menu Items"
  end
end

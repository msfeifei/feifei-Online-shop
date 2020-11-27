require 'rails_helper'
feature "People" do
    scenario "user creates a new person" do
      visit "/people/new"
  
      fill_in "First name", :with => "test"
      fill_in "Last name", :with => " "
      fill_in "Gender", :with => "female"
      click_button "Create Person"
        
      expect(page).to have_text("Last name can't be blank")  #判断页面元素 
    end
     
    scenario "user creates a new person" do
      visit "/people/new"
  
      fill_in "First name", :with => "test"
      fill_in "Last name", :with => "Han"
      fill_in "Gender", :with => "female"
      click_button "Create Person"
      #click_button "Back"
      expect(page).to have_text("A new person") 
      #expect(page).to have_text("Listing test")
    end
      
end


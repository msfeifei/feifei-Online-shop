require 'rails_helper'
feature "Sign up" do
    scenario "user creates a new user" do
      visit "/users/sign_up"
      
      fill_in "Email", :with => "11@1.com"
      fill_in "Password", :with => "111111"
      fill_in "Password confirmation", :with => "111111"
      click_button "Sign up"
      
      expect(page).to have_text("Welcome! You have signed up successfully.")  #判断页面元素 
    end
    scenario "user creates a new user" do
      visit "/users/sign_up"
      
      fill_in "Email", :with => " "
      fill_in "Password", :with => "111111"
      fill_in "Password confirmation", :with => "111111"
      click_button "Sign up"
      
      expect(page).to have_text("Email can't be blank")  #判断页面元素 
    end
    scenario "user creates a new user" do
      visit "/users/sign_up"
      
      fill_in "Email", :with => "11@1.com "
      fill_in "Password", :with => "11111"
      fill_in "Password confirmation", :with => "111111"
      click_button "Sign up"
      
      expect(page).to have_text("Password confirmation doesn't match Password")  #判断页面元素 
      expect(page).to have_text("Password is too short (minimum is 6 characters")
    end

end
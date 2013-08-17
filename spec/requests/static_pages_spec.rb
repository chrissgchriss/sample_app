# Capybara 2.0 changes test to be in features folder
# Will not work in request folder --
# in terminal, change the link to the test file to features folder

require 'spec_helper'

describe "Static pages" do
  
  describe "Home page" do
    
    it "should have the content 'Sample App123'" do
      get '/static_pages/home'
      page.should have_content('Sample App123')
      
    end
  end
  
  describe "Help page" do
    
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_content('Help')
    end
  end
end

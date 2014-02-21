require 'spec_helper'

describe "Static pages" do
  render_views
  
  describe "Home page" do

    it "Should have the h1 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sample App')
    end
    
    it "Should have the title 'Home'" do
      get '/static_pages/home'
      response.body.should include("<title>Ruby on Rails Tutorial Sample App | Home</title>")
    end
    
  end
  
  describe "Help Pages" do
  
    it "Should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end
    
    it "Should have the title 'Help'" do
      get '/static_pages/help'
      response.body.should include("<title>Ruby on Rails Tutorial Sample App</title>")
    end
    
  end
  
  describe "About Pages" do
  
    it "Should have the content 'About'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About')
    end
    
    it "Should have the title 'About'" do
      get '/static_pages/about'
      response.body.should include("<title>Ruby on Rails Tutorial Sample App</title>")
    end
    
  end
  
end

require 'spec_helper'
require 'capybara'
describe "Static Pages" do
  describe "Home page" do
    it "should have the content 'Sample App'" do
    visit '/static_pages/home'
    page.should have_content('Sample App')

    end

  it "should have the right title" do
  	visit '/static_pages/home'
  	page.should have_selector('title', :text=>"Home")
  end
  
  end

  describe "Help page" do
  	it "should have the content 'help'" do
  		visit '/static_pages/help'
  		page.should have_content('Help')
  	end
  	it "should have the right title" do
  	visit '/static_pages/home'
  	page.should have_selector('title', :text=>"Help")
  end
  
  end

  describe "about page" do
  	it "should have the content 'about us'" do
  		visit '/static_pages/about'
  		page.should have_content ('About us')
  	end
  	it "should have the right title" do
  	visit '/static_pages/home'
  	page.should have_title("About Us")
  end
  
  end


end

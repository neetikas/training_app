require 'spec_helper'

describe "StaticPages" do
   let(:base_title) { "Ruby on Rails Training App" }
  describe "GET /static_pages/home" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get static_pages_home_path
      response.status.should be(200)
    end
    
      it "should have the content 'Training App'" do
        visit '/static_pages/home'
        page.should have_content('Training App')
      end
      
     it "should have the h1 'Training App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Training App')
    end
    
    # it "should have the right title" do
      # visit '/static_pages/home'
      # page.should have_selector('title',
                        # :text => "Ruby on Rails Training App | Home")
                        # #:text => "Home")
    # end
    
    it "should have the base title" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "#{base_title}")
    end
    
    it "should not have a custom page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title', :text => "| Home")
    end

  end
  describe "GET /static_pages/about" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_content('About Us')
    end

  end
end

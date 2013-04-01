require 'spec_helper'

describe "StaticPages" do

	describe "Home page" do

		it "should have the h1 'Sample App'" do
			visit '/static_pages/home'
			page.should have_selector('h1', :text => 'Sample App')
    end

		it "should have the title 'Home'" do
			visit '/static_pages/home'
#			page.should have_selector('title', :text => 'Home')
#			page.source.should have_selector('title', :text => 'Home')
#			page.should have_xpath("//title", :text => "Home")
			expect(first('title').native.text).to eq "RoR Tutorial | Home"
		end
  end

	describe "Help page" do

		it "should have the h1 'Help'" do
			visit '/static_pages/help'
			page.should have_selector('h1', :text => 'Help')
    end
		it "should have the title 'Help'" do
			visit '/static_pages/help'
#			page.should have_selector('title', :text => "RoR Tutorial | Help")
			expect(first('title').native.text).to eq "RoR Tutorial | Help"
		end
  end

	describe "About Us page" do

		it "should have the h1 'About Us'" do
			visit '/static_pages/about'
			page.should have_selector('h1', :text => 'About Us')
    end
		it "should have the title 'About Us'" do
			visit '/static_pages/about'
#			page.should have_selector('title', 
#									:text => "RoR Tutorial | About Us")
			expect(first('title').native.text).to eq "RoR Tutorial | About Us"
		end
  end


end

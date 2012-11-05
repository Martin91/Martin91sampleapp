require 'spec_helper'

describe "Static Pages" do
  describe "Home Page" do
    it "should have the right title" do
				visit '/static_pages/home'
				page.should have_selector('title',
																	:text => "Ruby on Rails Tutorial Sample App | Home")
		end
  end

	#describe "Help page" do

	#	it "shoule have the content'Help'" do
	#			visit '/static_pages/help'
	#			page.should have_content('Help')
	#	end
	#end

	describe "About Page" do
			it "should have the content 'About us'" do
					visit '/static_pages/about'
					page.should have_content('About us')
			end
	end
end

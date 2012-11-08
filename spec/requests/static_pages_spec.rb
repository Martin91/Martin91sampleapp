require 'spec_helper'

describe "Static Pages" do
		let (:base_title) { "Ruby on Rails Tutorial Sample App"}
  describe "Home Page" do
    it "should have the h1  'Sample App'" do
				visit '/static_pages/home'
				page.should have_selector('h1',
																	:text => "Sample App")
		end

		it "should have the base title" do 
				visit '/static_pages/home'
				page.should have_selector('title',
																 :text => "Ruby on Rails Tutorial Sample App")
		end

		it "should not have a custom page title" do
				visit '/static_pages/home'
				page.should_not have_selector('title',
																			:text => " | Home")
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

	describe "Contact Page" do
			it "should have the title 'Contact'" do
					visit '/static_pages/contact'
					page.should have_content('Contact')
			end
	end
end

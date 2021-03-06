require 'spec_helper'

describe "Static Pages" do
		let (:base_title) { "Ruby on Rails Tutorial Sample App"}

		subject { page }
  describe "Home Page" do
    before { visit root_path}

		it { should have_selector('h1', text: 'Sample App') }
		it { should have_selector 'title',
													text: full_title('') }
		it { should have_selector 'title', text: '| home' }
	end

	describe "Help page" do
		before { visit help_path }
		it { should have_selector('h1', text: 'Help') }
		it { should have_selector('title', text: full_title('Help')) }
	end

	describe "About Page" do
		before { visit about_path }
		it { should have_selector('h1', text: 'About') }
		it { should have_selector('title', text: full_title('About us')) }
	end

	describe "Contact Page" do
		before { visit contact_path }
		it { should have_selector('h1', text: 'Contact') }
		it { should have_selector('title', text: full_title('Contact')) }
	end
end

require 'spec_helper'

describe "User Pages" do
	before { visit signup_path }

	subject{ page }

	it { should have_selector("h1", text: "Sign up") }
	it { should have_selector("title", text: full_title("Sign up")) }

end

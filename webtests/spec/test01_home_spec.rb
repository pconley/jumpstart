require_relative 'spec_helper.rb'

RSpec.describe "Home Page" do

	before :each do
		$HomePage.goto
	end
     
	it "is present" do
		expect($HomePage).to be_present
	end
  
	it "has expected title" do
		expect($HomePage.title.downcase).to eq(APPNAME.downcase)
	end
  
	it "has expected labels" do
		expect($HomePage).to have_content("What's New")
		expect($HomePage).to have_content("Sign Up")
		expect($HomePage).to have_content("Login")
	end

	it "can link to login page" do
		$HomePage.login_link.click
		expect($LoginPage).to be_present
	end

	it "can link to signup page" do
		$HomePage.signup_link.click
		expect($SignupPage).to be_present
	end

	it "can link to announcement page" do
		$HomePage.announcements_link.click
		expect($AnnouncementsPage).to be_present
	end

end
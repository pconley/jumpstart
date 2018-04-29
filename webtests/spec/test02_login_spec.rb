require_relative 'spec_helper.rb'

RSpec.describe "Login Page" do

	before :each do
		$LoginPage.goto
	end
    
	it "is present" do
		expect($LoginPage).to be_present
		expect($LoginPage).to be_here("Remember me")
	end
  
	it "has expected title" do
		expect($HomePage.title.downcase).to eq(APPNAME.downcase)
	end
  
	it "has expected labels" do
		expect($LoginPage).to have_content("Login")
	end
  
	it "has expected fields" do
		expect($LoginPage.email_field).to exist
		expect($LoginPage.password_field).to exist
		expect($LoginPage.login_button).to exist
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

  
	# it "can login with valid credentials" do
	# 	$LoginPage.fill_and_submit($good_user, $good_pass)
	# 	expect($TravelFlightPage).to be_present
	# 	$LoginPage.logout
	# 	expect($LoginPage).to be_present
	# end
  
	# it "fails to login with invalid password" do
	# 	$LoginPage.fill_and_submit($good_user, "abc123")
	# 	expect($LoginPage).to have_content("Invalid email or password")
 #    # cannot log out... never got in
	# end
  
	# it "fails to login with invalid credentials" do
	# 	$LoginPage.fill_and_submit("xuser", "xpassword")
	# 	expect($LoginPage).to have_content("Invalid email or password")
 #    # cannot log out... never got in
	# end
  
end
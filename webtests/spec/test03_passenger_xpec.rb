# frozen_string_literal: true

require_relative 'spec_helper.rb'

describe "Travel Passenger Page" do
	
  before :each do
	TravelSession.start()
    $TravelFlightPage.goto
    expect($TravelFlightPage).to be_present
    $TravelFlightPage.fill_flight_return_details
  end
  
  after :each do
	TravelSession.stop
  end

	it "has the expected title" do
		expect(SK::Browser.title).to eq("Agile Travel")
	end
  
	it "Must Contain The Labels" do
		expect(SK::Browser).to have_content("Passenger Details")
		expect(SK::Browser).to have_content("First name:")
		expect(SK::Browser).to have_content("Last name:")
	end

 	it "fill the passenger details page" do
    	$TravelPassengerPage.fill_passenger_details
		expect(SK::Browser).to have_content("Pay by Credit Card")
	end
end

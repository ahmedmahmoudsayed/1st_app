require 'rails_helper'

describe "Staticpage", :type => :request do
	describe "home page"do
		it "should have the content 'Demo App | Home'" do
			visit '/static_pages/home'
			page.should have_content('Demo App | Home')
		end
	end
	describe "about page"do
		it "should have the content 'Demo App | About Us'" do
			visit '/static_pages/about'
			page.should have_content('Demo App | About Us')
		end
	end
	describe "Location page"do
	it "should have the content 'Demo App | Location'" do
		visit '/static_pages/location'
		page.should have_content('Demo App | Location')
	end
	end
	describe "contact page"do
	it "should have the content 'Demo App | Contact'" do
		visit '/static_pages/contact'
		page.should have_content('Demo App | Contact')
	end
	end
end

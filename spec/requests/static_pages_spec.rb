require 'rails_helper'

# RSpec.describe "StaticPages", :type => :request do
#   describe "GET /static_pages" do
#     it "works! (now write some real specs)" do
#       get static_pages_home_path
#       expect(response).to have_http_status(200)
#     end
#   end
# end


require 'spec_helper'

describe "Static Pages" do
	describe "Home Page" do 
		it "should have the content 'Blog'" do
			visit '/static_pages/home'
			expect(page).to have_content('Blog')
		end
	end

	describe "Help Page" do 
		it "should have the content 'Help'" do 
			visit '/static_pages/help'
			expect(page).to have_content('Help')
		end
	end
end
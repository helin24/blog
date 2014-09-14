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
		before { visit root_path }
		it "should have the content 'Blog'" do
			expect(page).to have_content('Blog')
		end

		it "should have title with the word 'Home'" do
			expect(page).to have_title('Home')
		end
	end

	describe "Help Page" do 
		before {visit help_path}
		it "should have the content 'Help'" do 
			expect(page).to have_content('Help')
		end

		it "should have title with the word 'Help'" do
			expect(page).to have_title('Help')
		end
	end

	describe "About Page" do
		before {visit about_path}
		it "should have the content 'About'" do 
			expect(page).to have_content('About')
		end
	end

		it "should have title with the word 'About'" do
			visit '/about'
			expect(page).to have_title('About')
		end

end
require 'spec_helper' 
describe "home page" do
	before :each do
		visit "/"
	end
	it "displays greeting" do
		page.should have_content("Welcome home!")
	end

	describe "after clicking My Blog link" do
		before :each do
			click_link('My Blog')
		end
		it "displays posts" do
			page.should have_selector("h1", text: "Listing posts")
		end
	end
	describe "after clicking about link", :js => true do
		before :each do
			click_link('about')
		end
		it "displays posts" do
			page.should have_selector("h3", text: "This is simple app to learn capybara.")
		end
	end
end
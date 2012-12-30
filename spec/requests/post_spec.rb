require 'spec_helper' 
describe "post" do
	before :each do
		visit "/posts"
	end
	it "displays greeting" do
		page.should have_content("Listing posts")
	end

	describe "after clicking link" do
		before :each do
			click_link('New Post')
		end
		it "creats new post successfully" do
			fill_in('Name', :with => 'Mohamed')
			fill_in('Title', :with => 'tested post')
			fill_in('Content', :with => 'any plaaaaaaaaaaaaaaaa')
			click_button('Create Post')
			page.should have_content("Post was successfully created.")
			click_link "Back"
			page.should have_content("Listing posts")
			# debugger
			# print page.html
			within_table('posts') do
     			page.has_css?('table td.posts')
		    end
		end

		it "creats post unsuccessfully" do
			fill_in('Name', :with => 'Mohamed')
			fill_in('Title', :with => 'pla')
			fill_in('Content', :with => 'any plaaaaaaaaaaaaaaaa')
			click_button('Create Post')
			page.should have_selector("h2", text: "1 error prohibited this post from being saved:")
		end
		it "creats new comment successfully" do
			fill_in('Name', :with => 'Mohamed')
			fill_in('Title', :with => 'tested post')
			fill_in('Content', :with => 'any plaaaaaaaaaaaaaaaa')
			click_button('Create Post')
			page.should have_content("Post was successfully created.")
			
			within('#comments_form') do
				fill_in('Commenter', :with => 'commeter1')
				fill_in('Body', :with => 'any plaaaaaaaaaaaaaaaa comment')
				click_button('Create Comment')
				
			end
			within('#comments') do
				page.has_content?('commenter1')
			end
		end
	end
end
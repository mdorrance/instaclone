require "rails_helper"

RSpec.describe "User can search for hashtag", type: :feature do
  context "A user with an instagram account" do

    it "renders tag search box" do
      VCR.use_cassette("user_sees_tag_search_test#tag") do
        visit root_path
        login_user

        click_link "Login"

        within(".navbar") do
          expect(page).to have_content "heshekids"
        end
        within("#tag-search") do
          fill_in "search", :with => "Mike"
          click_button 'commit'
        end

        expect(current_path).to eq search_path

      end
    end
  end
end

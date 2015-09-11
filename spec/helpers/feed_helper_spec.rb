require 'rails_helper'

RSpec.describe FeedHelper, type: :helper do
  xit "renders search helpers" do
    VCR.use_cassette("uses_search_helper_methods#search") do
      visit root_path
      login_user

      click_link "Login"

      within(".navbar") do
        expect(page).to have_content "heshekids"
      end
      within("#user-search") do
        fill_in "search", :with => "Tom"
        click_link_or_button "search-users"
      end

      expect(current_path).to eq user_search_path

      expect(page).to have_content "Tom"

    end
  end
end

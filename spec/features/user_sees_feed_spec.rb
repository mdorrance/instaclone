require "rails_helper"

RSpec.describe "User can see feed", type: :feature do
  context "A user with an instagram account" do

    it "renders feed" do
      VCR.use_cassette("user_sees_feed_test#feed") do
        visit root_path
        login_user

        click_link "Login"

        within(".navbar") do
          expect(page).to have_content "heshekids"
        end

        expect(page).to have_content "jen_gray"
        expect(page).to have_content "1 d"
        expect(page).to have_content "Everything's better with a Tutu in the house!"
        expect(page).to have_content "Everything's better with a Tutu in the house!"

      end
    end
  end
end

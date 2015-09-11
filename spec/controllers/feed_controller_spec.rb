require 'rails_helper'

RSpec.describe FeedController, type: :controller do

  describe "GET #index" do

    it "returns http success" do
      VCR.use_cassette("feed_controller#user") do
        visit root_path
        login_user

        click_link "Login"

        expect(current_path).to eq feed_path
        expect(response).to have_http_status(:success)
      end
    end
  end

end

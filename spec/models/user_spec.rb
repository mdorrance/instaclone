require "rails_helper"

RSpec.describe "the User model", type: :model do
  context "a valid user" do
    before do
      login_user
    end

    it "has a provider" do
      expect(user.provider).to eq "instagram"
    end

    it "has a uid" do
      expect(user.uid).to eq "1234"
    end

    it "has a nickname" do
      expect(user.nickname).to eq "heshekids"
    end

    it "has a name" do
      expect(user.name).to eq "Mike Dorrance"
    end

    it "has an website" do
      expect(user.website).to eq "dorrance.com"
    end

    it "has an image" do
      expect(user.image_url).to eq "happy.jpg"
    end

    it "has a token" do
      expect(user.token).to eq ENV['instagram_test']
    end
  end
end

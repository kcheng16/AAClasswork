require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  describe "Validations" do
    it {should validate_presence_of(:username)}
    it {should validate_presence_of(:password_digest)}
    it {should validate_presence_of(:session_token)}

    it {should validate_uniqueness_of(:username)}
    it {should validate_length_of(:password).is_at_least(8)}
  end
  
  describe "Associations" do
    it {should have_many(:goals)}
    it {should have_many(:comments)}
  end

  describe "SPIRE" do
    let!(:user) { create(:user) }

    describe "is_valid_password?" do
      context "with a valid password" do
        it "should return true" do
          expect(user.is_valid_password?("password")).to be true
        end
      end

      context "with an invalid password" do
        it "should return true" do
          expect(user.is_valid_password?("passwo")).to be false
        end
      end
    end


  end
end

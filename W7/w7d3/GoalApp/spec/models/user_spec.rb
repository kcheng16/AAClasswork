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

end

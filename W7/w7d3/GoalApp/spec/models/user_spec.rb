require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  describe "Validations" do
    it {should validate_presence_of(:username)}
    it {should validate_presence_of(:password_digest)}
    it {should validate_presence_of(:session_token)}

    it {should validate_uniqueness_of(:username)}
    it {should validate_length_of(:password).is_at_least(8)}

    #comment on goals
    #user has amny comments
    #goals belong to user
    #comment belong to user
    #goal has many comments
end

require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    user = User.new(
      name: "Alice Alice",
      email: "alice@alice.com",
      password: "abcefg"
    )
    # validation tests/examples here
    it "is not valid without a name" do
      user.name = nil
      expect(user).not_to be_valid
    end
    it "is not valid without an email" do
      user.email = nil
      expect(user).not_to be_valid
    end
    it "is not valid without a password" do
      user.password = nil
      expect(user).not_to be_valid
    end
  end
end

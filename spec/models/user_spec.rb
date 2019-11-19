require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    # validation tests/examples here

    it "is valid" do
      user = User.new(
        first_name: 'First',
        last_name: 'Last',
        email: 'test@test.com',
        password: 'testing123',
        password_confirmation: 'testing123'
      )
      expect(user).to be_valid
    end

    it "password don't match" do
      user = User.new(
        first_name: 'First',
        last_name: 'Last',
        email: 'email@email.com',
        password: 'testing123',
        password_confirmation: 'testing'
      )
      user.valid?
      expect(user.errors[:password_confirmation]).to be_present
    end


  end
end
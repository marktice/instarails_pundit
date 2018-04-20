require 'rails_helper'

RSpec.describe User, type: :model do
  it 'should have matching email' do
    user = User.new
    user.email = ENV.fetch('USER_EMAIL')
    expect(user.email).to eq('test@email.com')
  end

  # it 'should not create user' do
  #   user = User.new
  #   user.save
  #   expect(User.all.length).to eq(0)
  # end
end

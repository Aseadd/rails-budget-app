require 'rails_helper'

RSpec.describe 'User', type: :model do
    let!(:user) do
        User.create(
        name: 'Kaiden Carlson',
        email: 'kaiden_carlson@testmail.com',
        password: 'kaiden_carlson_pass'
        )
    end

    it 'is valid with valid attributes' do
        expect(user).to be_valid
    end

    it 'is not valid without a name' do
        user.name = nil
        expect(user).to_not be_valid
    end

    it 'is not valid without an email' do
        user.email = nil
        expect(user).to_not be_valid
    end

    it 'is not valid without a password' do
        user.password = nil
        expect(user).to_not be_valid
    end

    it 'is not valid with a name longer than 20 characters' do
        user.name = 'a' * 21
        expect(user).to_not be_valid
    end

end

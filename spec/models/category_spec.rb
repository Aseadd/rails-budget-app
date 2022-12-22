require 'rails_helper'

RSpec.describe 'Category', type: :model do
    let!(:user) do
        User.create(
          name: 'Kaiden Carlson',
          email: 'kaiden_carlson@testmail.com',
          password: 'kaiden_carlson_pass'
        )
      end
    
    let (:category) do
        Category.create(
            name: 'Test Category',
            icon: 'test_icon',
            user: user
        )
    end

    it 'is valid with valid attributes' do
        expect(category).to be_valid
    end

    it 'is not valid without a name' do
        category.name = nil
        expect(category).to_not be_valid
    end

    it 'is not valid without an icon' do
        category.icon = nil
        expect(category).to_not be_valid
    end

    it 'is not valid without a user' do
        category.user = nil
        expect(category).to_not be_valid
    end

    it 'is not valid with a name longer than 50 characters' do
        category.name = 'a' * 51
        expect(category).to_not be_valid
    end

    
end

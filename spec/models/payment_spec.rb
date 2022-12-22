require 'rails_helper'

RSpec.describe 'Payment', type: :model do
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

    let (:payment) do
        Payment.create(
        name: 'Test Payment',
        amount: 100,
        user: user,
        categories: [category]
        )
    end

    it 'is valid with valid attributes' do
        expect(payment).to be_valid
    end

    it 'is not valid without a name' do
        payment.name = nil
        expect(payment).to_not be_valid
    end

    it 'is not valid without an amount' do
        payment.amount = nil
        expect(payment).to_not be_valid
    end
    
    it 'is not valid without a user' do
        payment.user = nil
        expect(payment).to_not be_valid
    end

    it 'is not valid with a name longer than 50 characters' do

        payment.name = 'a' * 51
        expect(payment).to_not be_valid
    end

    it 'is not valid with an amount less than 0' do
        payment.amount = -1
        expect(payment).to_not be_valid
    end

    it 'is not valid with a name shorter than 2 characters' do

        payment.name = 'a'
        expect(payment).to_not be_valid
    end

    it 'is not valid with a name longer than 50 characters' do
            
        payment.name = 'a' * 51
        expect(payment).to_not be_valid
    end

end


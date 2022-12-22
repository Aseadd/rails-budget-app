require 'rails_helper'
require 'capybara/rails'

RSpec.describe 'Payment/index', type: :feature do
    include Devise::Test::IntegrationHelpers
    let(:user) {User.create(name: 'Test User', email: 'test@gmail.com', password: '123456')}
    
    describe 'index page' do
        before do
            sign_in user
        end

        it 'has a title' do
            visit payments_path
            expect(page).to have_content('Transactions')
        end
    end
end
require 'rails_helper'
require 'capybara/rails'

RSpec.describe 'Category/index', type: :feature do
    include Devise::Test::IntegrationHelpers
    let(:user) {User.create(name: 'Test User', email: 'test@gmail.com', password: '123456')}
    
    describe 'index page' do
        before do
            sign_in user
        end

        it 'has a title' do
            visit categories_path
            expect(page).to have_content('Categories')
        end

        it 'has a link to add a category' do
            visit categories_path
            expect(page).to have_link('New Category')
        end
    end
end
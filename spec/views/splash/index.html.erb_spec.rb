require 'rails_helper'

RSpec.describe 'splash/index.html.erb', type: :feature do
  describe 'index page' do
    before do
      visit splash_index_path
    end

    it 'has a title' do
      expect(page).to have_content('Budget App')
    end

    it 'has a link to sign in' do
      expect(page).to have_link('Login')
    end

    it 'has a link to sign up' do
      expect(page).to have_link('Sign Up')
    end
  end
end

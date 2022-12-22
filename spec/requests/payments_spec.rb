require 'rails_helper'

RSpec.describe 'Payments', type: :request do
  include Devise::Test::IntegrationHelpers

  let(:user) { User.create(name: 'Test User', email: 'test@test.com', password: '123456') }
  let(:category) { Category.create(name: 'Test Category', icon: 'test_icon', user:) }
  let(:payment) { Payment.create(name: 'Test Payment', amount: 100, user:, categories: [category]) }

  describe 'GET /index' do
    before do
      sign_in user
      get payments_path
    end
    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end
  end
end

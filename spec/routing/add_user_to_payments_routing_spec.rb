require 'rails_helper'

RSpec.describe AddUserToPaymentsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/add_user_to_payments').to route_to('add_user_to_payments#index')
    end

    it 'routes to #new' do
      expect(get: '/add_user_to_payments/new').to route_to('add_user_to_payments#new')
    end

    it 'routes to #show' do
      expect(get: '/add_user_to_payments/1').to route_to('add_user_to_payments#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/add_user_to_payments/1/edit').to route_to('add_user_to_payments#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/add_user_to_payments').to route_to('add_user_to_payments#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/add_user_to_payments/1').to route_to('add_user_to_payments#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/add_user_to_payments/1').to route_to('add_user_to_payments#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/add_user_to_payments/1').to route_to('add_user_to_payments#destroy', id: '1')
    end
  end
end

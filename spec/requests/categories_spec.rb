require 'rails_helper' 

RSpec.describe '/categories', type: :request do
    # This should return the minimal set of attributes required to create a valid
    # Category. As you add validations to Category, be sure to
    # adjust the attributes here as well.
    include Devise::Test::IntegrationHelpers
    let(:user) {User.create(name: 'Test User', email: 'test@gmail.com', password: '123456')}
    let(:category) {Category.create(name: 'Test Category', icon: 'test_icon')}

    describe 'GET /index' do
        before do 
            sign_in user
            get categories_path
        end

        it 'renders a successful response' do
            expect(response).to have_http_status(:ok)
        end

    end

    describe 'GET /new' do
        before do 
            sign_in user
            get new_category_path
        end

        it 'renders a successful response' do
            expect(response).to have_http_status(:ok)
        end
    end
end
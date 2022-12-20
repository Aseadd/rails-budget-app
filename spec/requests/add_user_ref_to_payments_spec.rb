require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe '/add_user_ref_to_payments', type: :request do
  # This should return the minimal set of attributes required to create a valid
  # AddUserRefToPayment. As you add validations to AddUserRefToPayment, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    skip('Add a hash of attributes valid for your model')
  end

  let(:invalid_attributes) do
    skip('Add a hash of attributes invalid for your model')
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      AddUserRefToPayment.create! valid_attributes
      get add_user_ref_to_payments_url
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      add_user_ref_to_payment = AddUserRefToPayment.create! valid_attributes
      get add_user_ref_to_payment_url(add_user_ref_to_payment)
      expect(response).to be_successful
    end
  end

  describe 'GET /new' do
    it 'renders a successful response' do
      get new_add_user_ref_to_payment_url
      expect(response).to be_successful
    end
  end

  describe 'GET /edit' do
    it 'renders a successful response' do
      add_user_ref_to_payment = AddUserRefToPayment.create! valid_attributes
      get edit_add_user_ref_to_payment_url(add_user_ref_to_payment)
      expect(response).to be_successful
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new AddUserRefToPayment' do
        expect do
          post add_user_ref_to_payments_url, params: { add_user_ref_to_payment: valid_attributes }
        end.to change(AddUserRefToPayment, :count).by(1)
      end

      it 'redirects to the created add_user_ref_to_payment' do
        post add_user_ref_to_payments_url, params: { add_user_ref_to_payment: valid_attributes }
        expect(response).to redirect_to(add_user_ref_to_payment_url(AddUserRefToPayment.last))
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new AddUserRefToPayment' do
        expect do
          post add_user_ref_to_payments_url, params: { add_user_ref_to_payment: invalid_attributes }
        end.to change(AddUserRefToPayment, :count).by(0)
      end

      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post add_user_ref_to_payments_url, params: { add_user_ref_to_payment: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe 'PATCH /update' do
    context 'with valid parameters' do
      let(:new_attributes) do
        skip('Add a hash of attributes valid for your model')
      end

      it 'updates the requested add_user_ref_to_payment' do
        add_user_ref_to_payment = AddUserRefToPayment.create! valid_attributes
        patch add_user_ref_to_payment_url(add_user_ref_to_payment), params: { add_user_ref_to_payment: new_attributes }
        add_user_ref_to_payment.reload
        skip('Add assertions for updated state')
      end

      it 'redirects to the add_user_ref_to_payment' do
        add_user_ref_to_payment = AddUserRefToPayment.create! valid_attributes
        patch add_user_ref_to_payment_url(add_user_ref_to_payment), params: { add_user_ref_to_payment: new_attributes }
        add_user_ref_to_payment.reload
        expect(response).to redirect_to(add_user_ref_to_payment_url(add_user_ref_to_payment))
      end
    end

    context 'with invalid parameters' do
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        add_user_ref_to_payment = AddUserRefToPayment.create! valid_attributes
        patch add_user_ref_to_payment_url(add_user_ref_to_payment),
              params: { add_user_ref_to_payment: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe 'DELETE /destroy' do
    it 'destroys the requested add_user_ref_to_payment' do
      add_user_ref_to_payment = AddUserRefToPayment.create! valid_attributes
      expect do
        delete add_user_ref_to_payment_url(add_user_ref_to_payment)
      end.to change(AddUserRefToPayment, :count).by(-1)
    end

    it 'redirects to the add_user_ref_to_payments list' do
      add_user_ref_to_payment = AddUserRefToPayment.create! valid_attributes
      delete add_user_ref_to_payment_url(add_user_ref_to_payment)
      expect(response).to redirect_to(add_user_ref_to_payments_url)
    end
  end
end

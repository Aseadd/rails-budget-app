require 'rails_helper'

RSpec.describe 'add_user_to_payments/new', type: :view do
  before(:each) do
    assign(:add_user_to_payment, AddUserToPayment.new(
                                   users: nil
                                 ))
  end

  it 'renders new add_user_to_payment form' do
    render

    assert_select 'form[action=?][method=?]', add_user_to_payments_path, 'post' do
      assert_select 'input[name=?]', 'add_user_to_payment[users_id]'
    end
  end
end

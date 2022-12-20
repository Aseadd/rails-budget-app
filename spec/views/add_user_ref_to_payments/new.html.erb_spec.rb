require 'rails_helper'

RSpec.describe 'add_user_ref_to_payments/new', type: :view do
  before(:each) do
    assign(:add_user_ref_to_payment, AddUserRefToPayment.new(
                                       user: nil
                                     ))
  end

  it 'renders new add_user_ref_to_payment form' do
    render

    assert_select 'form[action=?][method=?]', add_user_ref_to_payments_path, 'post' do
      assert_select 'input[name=?]', 'add_user_ref_to_payment[user_id]'
    end
  end
end

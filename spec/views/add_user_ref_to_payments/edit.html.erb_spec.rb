require 'rails_helper'

RSpec.describe 'add_user_ref_to_payments/edit', type: :view do
  let(:add_user_ref_to_payment) do
    AddUserRefToPayment.create!(
      user: nil
    )
  end

  before(:each) do
    assign(:add_user_ref_to_payment, add_user_ref_to_payment)
  end

  it 'renders the edit add_user_ref_to_payment form' do
    render

    assert_select 'form[action=?][method=?]', add_user_ref_to_payment_path(add_user_ref_to_payment), 'post' do
      assert_select 'input[name=?]', 'add_user_ref_to_payment[user_id]'
    end
  end
end

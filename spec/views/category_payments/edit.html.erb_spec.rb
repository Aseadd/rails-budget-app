require 'rails_helper'

RSpec.describe 'category_payments/edit', type: :view do
  let(:category_payment) do
    CategoryPayment.create!(
      Categories: nil,
      Payments: nil
    )
  end

  before(:each) do
    assign(:category_payment, category_payment)
  end

  it 'renders the edit category_payment form' do
    render

    assert_select 'form[action=?][method=?]', category_payment_path(category_payment), 'post' do
      assert_select 'input[name=?]', 'category_payment[Categories_id]'

      assert_select 'input[name=?]', 'category_payment[Payments_id]'
    end
  end
end

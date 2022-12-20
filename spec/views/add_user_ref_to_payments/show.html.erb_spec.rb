require 'rails_helper'

RSpec.describe 'add_user_ref_to_payments/show', type: :view do
  before(:each) do
    assign(:add_user_ref_to_payment, AddUserRefToPayment.create!(
                                       user: nil
                                     ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(//)
  end
end

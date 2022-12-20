require 'rails_helper'

RSpec.describe 'add_user_to_payments/show', type: :view do
  before(:each) do
    assign(:add_user_to_payment, AddUserToPayment.create!(
                                   users: nil
                                 ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(//)
  end
end

require 'rails_helper'

RSpec.describe 'add_user_ref_to_payments/index', type: :view do
  before(:each) do
    assign(:add_user_ref_to_payments, [
             AddUserRefToPayment.create!(
               user: nil
             ),
             AddUserRefToPayment.create!(
               user: nil
             )
           ])
  end

  it 'renders a list of add_user_ref_to_payments' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end

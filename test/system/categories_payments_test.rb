require 'application_system_test_case'

class CategoriesPaymentsTest < ApplicationSystemTestCase
  setup do
    @categories_payment = categories_payments(:one)
  end

  test 'visiting the index' do
    visit categories_payments_url
    assert_selector 'h1', text: 'Categories payments'
  end

  test 'should create categories payment' do
    visit categories_payments_url
    click_on 'New categories payment'

    fill_in 'Categories', with: @categories_payment.Categories
    fill_in 'Payments', with: @categories_payment.Payments_id
    fill_in 'References', with: @categories_payment.references
    click_on 'Create Categories payment'

    assert_text 'Categories payment was successfully created'
    click_on 'Back'
  end

  test 'should update Categories payment' do
    visit categories_payment_url(@categories_payment)
    click_on 'Edit this categories payment', match: :first

    fill_in 'Categories', with: @categories_payment.Categories
    fill_in 'Payments', with: @categories_payment.Payments_id
    fill_in 'References', with: @categories_payment.references
    click_on 'Update Categories payment'

    assert_text 'Categories payment was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Categories payment' do
    visit categories_payment_url(@categories_payment)
    click_on 'Destroy this categories payment', match: :first

    assert_text 'Categories payment was successfully destroyed'
  end
end

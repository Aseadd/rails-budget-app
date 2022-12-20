require 'test_helper'

class CategoriesPaymentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @categories_payment = categories_payments(:one)
  end

  test 'should get index' do
    get categories_payments_url
    assert_response :success
  end

  test 'should get new' do
    get new_categories_payment_url
    assert_response :success
  end

  test 'should create categories_payment' do
    assert_difference('CategoriesPayment.count') do
      post categories_payments_url,
           params: { categories_payment: { Categories: @categories_payment.Categories,
                                           Payments_id: @categories_payment.Payments_id, references: @categories_payment.references } }
    end

    assert_redirected_to categories_payment_url(CategoriesPayment.last)
  end

  test 'should show categories_payment' do
    get categories_payment_url(@categories_payment)
    assert_response :success
  end

  test 'should get edit' do
    get edit_categories_payment_url(@categories_payment)
    assert_response :success
  end

  test 'should update categories_payment' do
    patch categories_payment_url(@categories_payment),
          params: { categories_payment: { Categories: @categories_payment.Categories,
                                          Payments_id: @categories_payment.Payments_id, references: @categories_payment.references } }
    assert_redirected_to categories_payment_url(@categories_payment)
  end

  test 'should destroy categories_payment' do
    assert_difference('CategoriesPayment.count', -1) do
      delete categories_payment_url(@categories_payment)
    end

    assert_redirected_to categories_payments_url
  end
end

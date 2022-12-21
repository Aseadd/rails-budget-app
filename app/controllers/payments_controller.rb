class PaymentsController < ApplicationController
  before_action :set_payment, only: %i[show edit update destroy]

  def index
    @payments = Payment.all.order(created_at: :desc)
  end

  def new
    @categories = Category.where(user: current_user)
    @payment = Payment.new
  end

  def create
    name = payment_params[:name]
    amount = payment_params[:amount]

    @payment = Payment.new(name:, amount:)
    @payment.user = current_user
    @category = Category.find(payment_params[:category_id])
    @payment.categories = [@category]

    puts @payment
    puts @category
    puts @payment.valid?

    respond_to do |format|
      if @payment.save
        format.html { redirect_to payments_path(@category), notice: 'Transaction was successfully created.' }
        format.json { render :show, status: :created, location: @payment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @payment.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_payment
    @payment = Payment.find(params[:id])
  end

  def payment_params
    params.require(:payment).permit(:name, :amount, :category_id)
  end
end

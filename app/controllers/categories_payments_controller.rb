class CategoriesPaymentsController < ApplicationController
  before_action :set_categories_payment, only: %i[show edit update destroy]

  # GET /categories_payments or /categories_payments.json
  def index
    @categories_payments = CategoriesPayment.all
  end

  # GET /categories_payments/1 or /categories_payments/1.json
  def show; end

  # GET /categories_payments/new
  def new
    @categories_payment = CategoriesPayment.new
  end

  # GET /categories_payments/1/edit
  def edit; end

  # POST /categories_payments or /categories_payments.json
  def create
    @categories_payment = CategoriesPayment.new(categories_payment_params)

    respond_to do |format|
      if @categories_payment.save
        format.html do
          redirect_to categories_payment_url(@categories_payment),
                      notice: 'Categories payment was successfully created.'
        end
        format.json { render :show, status: :created, location: @categories_payment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @categories_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categories_payments/1 or /categories_payments/1.json
  def update
    respond_to do |format|
      if @categories_payment.update(categories_payment_params)
        format.html do
          redirect_to categories_payment_url(@categories_payment),
                      notice: 'Categories payment was successfully updated.'
        end
        format.json { render :show, status: :ok, location: @categories_payment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @categories_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categories_payments/1 or /categories_payments/1.json
  def destroy
    @categories_payment.destroy

    respond_to do |format|
      format.html { redirect_to categories_payments_url, notice: 'Categories payment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_categories_payment
    @categories_payment = CategoriesPayment.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def categories_payment_params
    params.require(:categories_payment).permit(:Categories, :references, :Payments_id)
  end
end

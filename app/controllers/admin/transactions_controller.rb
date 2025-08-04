class Admin::TransactionsController < ApplicationController
  before_action :set_admin_transaction, only: %i[ show edit update destroy ]

  # GET /admin/transactions or /admin/transactions.json
  def index
    @admin_transactions = Admin::Transaction.all
  end

  # GET /admin/transactions/1 or /admin/transactions/1.json
  def show
  end

  # GET /admin/transactions/new
  def new
    @admin_transaction = Admin::Transaction.new
  end

  # GET /admin/transactions/1/edit
  def edit
  end

  # POST /admin/transactions or /admin/transactions.json
  def create
    @admin_transaction = Admin::Transaction.new(admin_transaction_params)

    respond_to do |format|
      if @admin_transaction.save
        format.html { redirect_to @admin_transaction, notice: "Transaction was successfully created." }
        format.json { render :show, status: :created, location: @admin_transaction }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @admin_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/transactions/1 or /admin/transactions/1.json
  def update
    respond_to do |format|
      if @admin_transaction.update(admin_transaction_params)
        format.html { redirect_to @admin_transaction, notice: "Transaction was successfully updated." }
        format.json { render :show, status: :ok, location: @admin_transaction }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @admin_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/transactions/1 or /admin/transactions/1.json
  def destroy
    @admin_transaction.destroy!

    respond_to do |format|
      format.html { redirect_to admin_transactions_path, status: :see_other, notice: "Transaction was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_transaction
      @admin_transaction = Admin::Transaction.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def admin_transaction_params
      params.expect(admin_transaction: [ :rental_id, :amount, :transaction_type, :status ])
    end
end

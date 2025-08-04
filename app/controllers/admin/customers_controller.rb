class Admin::CustomersController < ApplicationController
  before_action :set_admin_customer, only: %i[ show edit update destroy ]

  # GET /admin/customers or /admin/customers.json
  def index
    @admin_customers = Admin::Customer.all
  end

  # GET /admin/customers/1 or /admin/customers/1.json
  def show
  end

  # GET /admin/customers/new
  def new
    @admin_customer = Admin::Customer.new
  end

  # GET /admin/customers/1/edit
  def edit
  end

  # POST /admin/customers or /admin/customers.json
  def create
    @admin_customer = Admin::Customer.new(admin_customer_params)

    respond_to do |format|
      if @admin_customer.save
        format.html { redirect_to @admin_customer, notice: "Customer was successfully created." }
        format.json { render :show, status: :created, location: @admin_customer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @admin_customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/customers/1 or /admin/customers/1.json
  def update
    respond_to do |format|
      if @admin_customer.update(admin_customer_params)
        format.html { redirect_to @admin_customer, notice: "Customer was successfully updated." }
        format.json { render :show, status: :ok, location: @admin_customer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @admin_customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/customers/1 or /admin/customers/1.json
  def destroy
    @admin_customer.destroy!

    respond_to do |format|
      format.html { redirect_to admin_customers_path, status: :see_other, notice: "Customer was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_customer
      @admin_customer = Admin::Customer.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def admin_customer_params
      params.expect(admin_customer: [ :name, :email, :phone_number, :address ])
    end
end

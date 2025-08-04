class Admin::RentalsController < ApplicationController
  before_action :set_admin_rental, only: %i[ show edit update destroy ]

  # GET /admin/rentals or /admin/rentals.json
  def index
    @admin_rentals = Admin::Rental.all
  end

  # GET /admin/rentals/1 or /admin/rentals/1.json
  def show
  end

  # GET /admin/rentals/new
  def new
    @admin_rental = Admin::Rental.new
  end

  # GET /admin/rentals/1/edit
  def edit
  end

  # POST /admin/rentals or /admin/rentals.json
  def create
    @admin_rental = Admin::Rental.new(admin_rental_params)

    respond_to do |format|
      if @admin_rental.save
        format.html { redirect_to @admin_rental, notice: "Rental was successfully created." }
        format.json { render :show, status: :created, location: @admin_rental }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @admin_rental.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/rentals/1 or /admin/rentals/1.json
  def update
    respond_to do |format|
      if @admin_rental.update(admin_rental_params)
        format.html { redirect_to @admin_rental, notice: "Rental was successfully updated." }
        format.json { render :show, status: :ok, location: @admin_rental }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @admin_rental.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/rentals/1 or /admin/rentals/1.json
  def destroy
    @admin_rental.destroy!

    respond_to do |format|
      format.html { redirect_to admin_rentals_path, status: :see_other, notice: "Rental was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_rental
      @admin_rental = Admin::Rental.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def admin_rental_params
      params.expect(admin_rental: [ :customer_id, :dress_variant_id, :start_date, :end_date, :return_date, :deposit_amount, :deposit_returned, :total_cost, :status ])
    end
end

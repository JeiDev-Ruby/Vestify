class Admin::FinesController < ApplicationController
  before_action :set_admin_fine, only: %i[ show edit update destroy ]

  # GET /admin/fines or /admin/fines.json
  def index
    @admin_fines = Admin::Fine.all
  end

  # GET /admin/fines/1 or /admin/fines/1.json
  def show
  end

  # GET /admin/fines/new
  def new
    @admin_fine = Admin::Fine.new
  end

  # GET /admin/fines/1/edit
  def edit
  end

  # POST /admin/fines or /admin/fines.json
  def create
    @admin_fine = Admin::Fine.new(admin_fine_params)

    respond_to do |format|
      if @admin_fine.save
        format.html { redirect_to @admin_fine, notice: "Fine was successfully created." }
        format.json { render :show, status: :created, location: @admin_fine }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @admin_fine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/fines/1 or /admin/fines/1.json
  def update
    respond_to do |format|
      if @admin_fine.update(admin_fine_params)
        format.html { redirect_to @admin_fine, notice: "Fine was successfully updated." }
        format.json { render :show, status: :ok, location: @admin_fine }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @admin_fine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/fines/1 or /admin/fines/1.json
  def destroy
    @admin_fine.destroy!

    respond_to do |format|
      format.html { redirect_to admin_fines_path, status: :see_other, notice: "Fine was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_fine
      @admin_fine = Admin::Fine.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def admin_fine_params
      params.expect(admin_fine: [ :rental_id, :amount, :reason, :paid ])
    end
end
